#include "raylib.h"

int main(){
const int WindoWidth = 1280;
const int WindowHeight = 720;

InitWindow(WindoWidth, WindowHeight, "my_game");
SetTargetFPS(60);

while (!WindowShouldClose()){
    BeginDrawing();
        ClearBackground(Color{255,255,255,255});
    
    EndDrawing();
}

}
