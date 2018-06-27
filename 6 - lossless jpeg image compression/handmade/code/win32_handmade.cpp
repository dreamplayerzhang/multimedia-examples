#include <stdio.h>
#include <windows.h>
#include <xinput.h>
#include <dsound.h>
#include "handmade.h"
#include "win32_handmade.h"
#include "handmade.cpp"

global int GlobalRunning = 1;
global win32_screen w32_screen;

internal void
LoadXInput(void)
{
    HMODULE XInputLibrary = LoadLibraryA("xinput1_4.dll");
    if(!XInputLibrary)
        XInputLibrary = LoadLibraryA("xinput9_1_0.dll");
    if(!XInputLibrary)
        XInputLibrary = LoadLibraryA("xinput1_3.dll");
    if(XInputLibrary)
    {
        XInputGetState = (x_input_get_state *)GetProcAddress(XInputLibrary, "XInputGetState");
        if(!XInputGetState)
            XInputGetState = XInputGetStateStub;

        XInputSetState = (x_input_set_state *)GetProcAddress(XInputLibrary, "XInputSetState");
        if(!XInputSetState)
            XInputSetState = XInputSetStateStub;
    }
}

internal void
displayScreen(win32_screen *screen, HDC dc, int width, int height)
{
    StretchDIBits(dc,
                  0, 0, width, height,
                  0, 0, screen->Width, screen->Height,
                  screen->Pixels,
                  &screen->Info,
                  DIB_RGB_COLORS, SRCCOPY);
}

internal window_dimension
getWindowdDimension(HWND window)
{
    window_dimension dim;
    RECT ClientRect;
    GetClientRect(window, &ClientRect);
    dim.Width = ClientRect.right - ClientRect.left;
    dim.Height = ClientRect.bottom - ClientRect.top;
    return dim;
}

internal LRESULT
windowCallBack(HWND window, UINT message, WPARAM wparam, LPARAM lparam)
{
    LRESULT ret = 0;

    switch(message) {
        case WM_CLOSE: {
            GlobalRunning = false;
        } break;
        case WM_ACTIVATEAPP: {
            if(wparam == TRUE)
                SetLayeredWindowAttributes(window, RGB(0, 0, 0), 255, LWA_ALPHA);
            else
                SetLayeredWindowAttributes(window, RGB(0, 0, 0), 64, LWA_ALPHA);
        } break;
        case WM_DESTROY: {
            GlobalRunning = false;
        } break;
        case WM_PAINT: {
            PAINTSTRUCT paint;
            HDC dc = BeginPaint(window, &paint);
            window_dimension dim = getWindowdDimension(window);
            displayScreen(&w32_screen, dc, dim.Width, dim.Height);
            EndPaint(window, &paint);
        } break;
        default: {
            ret = DefWindowProcA(window, message, wparam, lparam);
        } break;
    }

    return ret;
}

internal void
processKeyboardMessage(game_button_state *NewState, bool32 IsDown)
{
    // Assert(NewState->EndedDown != IsDown);
    NewState->EndedDown = IsDown;
    ++NewState->HalfTransitionCount;
}

internal void
processPendingMessages(game_controller_input *KeyboardController)
{
    MSG Message;
    while(PeekMessage(&Message, 0, 0, 0, PM_REMOVE))
    {
        switch(Message.message)
        {
            case WM_QUIT:
            {
                GlobalRunning = false;
            } break;
            case WM_SYSKEYDOWN:
            case WM_SYSKEYUP:
            case WM_KEYDOWN:
            case WM_KEYUP: {

                uint32 VKCode = (uint32)Message.wParam;
                bool32 WasDown = ((Message.lParam & (1 << 30)) != 0);
                bool32 IsDown = ((Message.lParam & (1 << 31)) == 0);

                if (VKCode == VK_ESCAPE)
                    GlobalRunning = 0;
                else if(VKCode == VK_UP)
                    processKeyboardMessage(&KeyboardController->ActionUp, IsDown);
                else if(VKCode == VK_LEFT)
                    processKeyboardMessage(&KeyboardController->MoveLeft, IsDown);
                else if(VKCode == VK_DOWN)
                    processKeyboardMessage(&KeyboardController->ActionDown, IsDown);
                else if(VKCode == VK_RIGHT)
                    processKeyboardMessage(&KeyboardController->MoveRight, IsDown);
            }
            default:
            {
                TranslateMessage(&Message);
                DispatchMessageA(&Message);
            } break;
        }
    }
}

internal void
resizeDIBSection(win32_screen *screen, int Width, int Height)
{
    if(screen->Pixels)
        VirtualFree(screen->Pixels, 0, MEM_RELEASE);

    screen->Width = Width;
    screen->Height = Height;
    screen->BytesPerPixel = BYTESPERPIXEL;

    screen->Info.bmiHeader.biSize = sizeof(screen->Info.bmiHeader);
    screen->Info.bmiHeader.biWidth = screen->Width;
    screen->Info.bmiHeader.biHeight = -screen->Height;
    screen->Info.bmiHeader.biPlanes = 1;
    screen->Info.bmiHeader.biBitCount = 32;
    screen->Info.bmiHeader.biCompression = BI_RGB;

    int BitmapMemorySize = (screen->Width*screen->Height)*BYTESPERPIXEL;
    screen->Pixels = VirtualAlloc(0, BitmapMemorySize, MEM_RESERVE|MEM_COMMIT, PAGE_READWRITE);
    screen->Pitch = Width*BYTESPERPIXEL;
}

internal real32
processXInputStickValue(SHORT Value, SHORT DeadZoneThreshold)
{

    real32 Result = 0;
    if(Value < -DeadZoneThreshold)
        Result = (real32)((Value + DeadZoneThreshold) / (32768.0f - DeadZoneThreshold));
    else if(Value > DeadZoneThreshold)
        Result = (real32)((Value - DeadZoneThreshold) / (32767.0f - DeadZoneThreshold));
    return Result ;
}

internal void
processXInputDigitalButton(DWORD XInputButtonState, game_button_state *OldState, DWORD ButtonBit, game_button_state *NewState)
{
    NewState->EndedDown = ((XInputButtonState & ButtonBit) == ButtonBit);
    NewState->HalfTransitionCount = (OldState->EndedDown != NewState->EndedDown) ? 1 : 0;
}


int WinMain(HINSTANCE Instance, HINSTANCE PrevInstance, LPSTR CommandLine, int ShowCode)
{

    resizeDIBSection(&w32_screen, 1280, 720);

    WNDCLASSA windowClass = {};
    windowClass.style = CS_HREDRAW|CS_VREDRAW;
    windowClass.lpfnWndProc = windowCallBack;
    windowClass.hInstance = Instance;
    windowClass.lpszClassName = "HandmadeHeroWindowClass";

    if(!RegisterClassA(&windowClass))
        return 1;

    HWND window = CreateWindowExA(
        WS_EX_LAYERED,
        windowClass.lpszClassName,
        "Handmade Hero",
        WS_OVERLAPPEDWINDOW|WS_VISIBLE,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        CW_USEDEFAULT,
        0,
        0,
        Instance,
        0);

    if (!window)
        return 1;

#if HANDMADE_INTERNAL
    LPVOID BaseAddress = (LPVOID)Terabytes(2);
#else
    LPVOID BaseAddress = 0;
#endif
    game_memory GameMemory = {};
    GameMemory.PermanentStorageSize = Megabytes(64);
    GameMemory.TransientStorageSize = Gigabytes(1);

    // TODO(casey): Handle various memory footprints (USING SYSTEM METRICS)
    win32_state Win32State = {};
    Win32State.TotalSize = GameMemory.PermanentStorageSize + GameMemory.TransientStorageSize;
    Win32State.GameMemoryBlock = VirtualAlloc(BaseAddress, (size_t)Win32State.TotalSize, MEM_RESERVE|MEM_COMMIT, PAGE_READWRITE);
    GameMemory.PermanentStorage = Win32State.GameMemoryBlock;
    GameMemory.TransientStorage = ((uint8 *)GameMemory.PermanentStorage + GameMemory.PermanentStorageSize);

    game_input Input[2] = {};
    game_input *NewInput = &Input[0];
    game_input *OldInput = &Input[1];
    LoadXInput();

    while (GlobalRunning) {

        // keyboard && input

        game_controller_input *oldKeyboard = GetController(OldInput, 0);
        game_controller_input *newKeyboard = GetController(NewInput, 0);
        *newKeyboard = {};
        newKeyboard->IsConnected = true;
        for(int i = 0; i < ArrayCount(newKeyboard->Buttons); i++)
           newKeyboard->Buttons[i].EndedDown = oldKeyboard->Buttons[i].EndedDown;

        processPendingMessages(newKeyboard);

        // process xpinput
        DWORD MaxControllerCount = XUSER_MAX_COUNT;
        if(MaxControllerCount > (ArrayCount(NewInput->Controllers) - 1))
            MaxControllerCount = (ArrayCount(NewInput->Controllers) - 1);

        for (int i=0; i < MaxControllerCount; i++) {

            DWORD OurControllerIndex = i + 1;
            game_controller_input *OldController = GetController(OldInput, OurControllerIndex);
            game_controller_input *NewController = GetController(NewInput, OurControllerIndex);

            XINPUT_STATE ControllerState;
            if(XInputGetState(i, &ControllerState) == ERROR_SUCCESS) {
                NewController->IsConnected = true;
                XINPUT_GAMEPAD *Pad = &ControllerState.Gamepad;

                NewController->StickAverageX = processXInputStickValue(Pad->sThumbLX, XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE);
                NewController->StickAverageY = processXInputStickValue(Pad->sThumbLY, XINPUT_GAMEPAD_LEFT_THUMB_DEADZONE);

                char buffer[1000];
                _snprintf_s(buffer, sizeof(buffer), "X: %lf, Y: %lf\n", NewController->StickAverageX, NewController->StickAverageY);
                //_snprintf_s(buffer, sizeof(buffer), "X: %lf, Y: %lf\n", Pad->sThumbLX, Pad->sThumbLY);
                OutputDebugString(buffer);

                NewController->IsAnalog = false;

                if((NewController->StickAverageX != 0.0f) ||(NewController->StickAverageY != 0.0f))
                    NewController->IsAnalog = true;

                if(Pad->wButtons & XINPUT_GAMEPAD_DPAD_UP)
                    NewController->StickAverageY = 1.0f;

                if(Pad->wButtons & XINPUT_GAMEPAD_DPAD_DOWN)
                    NewController->StickAverageY = -1.0f;

                if(Pad->wButtons & XINPUT_GAMEPAD_DPAD_LEFT)
                    NewController->StickAverageX = -1.0f;

                if(Pad->wButtons & XINPUT_GAMEPAD_DPAD_RIGHT)
                    NewController->StickAverageX = 1.0f;

                real32 Threshold = 0.5f;
                // DWORD XInputButtonState, game_button_state *OldState, DWORD ButtonBit, game_button_state *NewState)
                processXInputDigitalButton((NewController->StickAverageX < -Threshold) ? 1 : 0, &OldController->MoveLeft, 1, &NewController->MoveLeft);
                processXInputDigitalButton((NewController->StickAverageX > Threshold) ? 1 : 0, &OldController->MoveRight, 1, &NewController->MoveRight);
                processXInputDigitalButton((NewController->StickAverageY < -Threshold) ? 1 : 0, &OldController->MoveDown, 1, &NewController->MoveDown);
                processXInputDigitalButton((NewController->StickAverageY > Threshold) ? 1 : 0, &OldController->MoveUp, 1, &NewController->MoveUp);

                processXInputDigitalButton(Pad->wButtons, &OldController->ActionDown, XINPUT_GAMEPAD_A, &NewController->ActionDown);
                processXInputDigitalButton(Pad->wButtons, &OldController->ActionRight, XINPUT_GAMEPAD_B, &NewController->ActionRight);
                processXInputDigitalButton(Pad->wButtons, &OldController->ActionLeft, XINPUT_GAMEPAD_X, &NewController->ActionLeft);
                processXInputDigitalButton(Pad->wButtons, &OldController->ActionUp, XINPUT_GAMEPAD_Y, &NewController->ActionUp);
                processXInputDigitalButton(Pad->wButtons, &OldController->LeftShoulder, XINPUT_GAMEPAD_LEFT_SHOULDER, &NewController->LeftShoulder);
                processXInputDigitalButton(Pad->wButtons, &OldController->RightShoulder, XINPUT_GAMEPAD_RIGHT_SHOULDER, &NewController->RightShoulder);
                processXInputDigitalButton(Pad->wButtons, &OldController->Start, XINPUT_GAMEPAD_START, &NewController->Start);
                processXInputDigitalButton(Pad->wButtons, &OldController->Back, XINPUT_GAMEPAD_BACK, &NewController->Back);
            }

            else
                NewController->IsConnected = false;
        }

        // render
        game_screen g_screen = {};
        g_screen.Pixels = w32_screen.Pixels;
        g_screen.Width = w32_screen.Width;
        g_screen.Height = w32_screen.Height;
        g_screen.Pitch = w32_screen.Pitch;
        g_screen.BytesPerPixel = w32_screen.BytesPerPixel;
        game_update_render(&GameMemory, NewInput, &g_screen);

        //display
        window_dimension dim = getWindowdDimension(window);
        HDC dc = GetDC(window);
        displayScreen(&w32_screen, dc, dim.Width, dim.Height);
        ReleaseDC(window, dc);
    }

    return 0;
}
