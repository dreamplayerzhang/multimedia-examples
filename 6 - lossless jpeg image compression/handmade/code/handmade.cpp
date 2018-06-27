#pragma once

#include "handmade.h"

internal void
RenderWeirdGradient(game_screen *screen, int BlueOffset, int GreenOffset)
{
    uint8 *Row = (uint8 *)screen->Pixels;
    for(int y = 0; y < screen->Height; y++){
        uint32 *Pixel = (uint32 *)Row;
        for(int x = 0; x < screen->Width; x++) {
            uint8 Blue = (uint8)(x + BlueOffset);
            uint8 Green = (uint8)(y + GreenOffset);
            *Pixel++ = ((Green << 16) | Blue);
        }
        Row += screen->Pitch;
    }
}

void game_update_render(game_memory *Memory, game_input *Input, game_screen* g_screen)
{
    game_state *GameState = (game_state *)Memory->PermanentStorage;
    for(int i = 0; i < ArrayCount(Input->Controllers); i++) {
        game_controller_input *Controller = GetController(Input, i);
        if(Controller->IsAnalog)
        {
            GameState->BlueOffset += (int)(4.0f*Controller->StickAverageX);
            GameState->GreenOffset += (int)(4.0f*Controller->StickAverageY);
            GameState->ToneHz = 512 + (int)(128.0f*Controller->StickAverageY);
        }
        else
        {
            if(Controller->MoveLeft.EndedDown)
                GameState->BlueOffset -= 1;
            if(Controller->MoveRight.EndedDown)
                GameState->BlueOffset += 1;
        }

        GameState->PlayerX += (int)(4.0f*Controller->StickAverageX);
        GameState->PlayerY -= (int)(4.0f*Controller->StickAverageY);
        if(GameState->tJump > 0)
            GameState->PlayerY += (int)(5.0f*sinf(0.5f*Pi32*GameState->tJump));
        if(Controller->ActionDown.EndedDown)
            GameState->tJump = 4.0;
        GameState->tJump -= 0.033f;
    }
    RenderWeirdGradient(g_screen, GameState->BlueOffset, GameState->GreenOffset);

}
