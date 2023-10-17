#include "raylib.h"
#include <stdio.h>


#define SCREEN_WIDTH (1280)
#define SCREEN_HEIGHT (720)
#define TARGET_FPS (60)

#define WINDOW_TITLE "Window title"

const Vector2 originalCatPosition = {100, 100};
const Vector2 originalTeaPosition = {600, 250};

bool DragAndDrop(Texture2D* object, Vector2* objectPosition, const Rectangle* dropArea, Vector2 originalPosition) {
    static bool isObjectBeingDragged = false;
    static float offsetX = 0;
    static float offsetY = 0;


    Rectangle objectBounds = { objectPosition->x, objectPosition->y, (float)object->width, (float)object->height };
    

    if (IsMouseButtonDown(MOUSE_LEFT_BUTTON)) {
        // printf("MOUSE DOWN");
        if (CheckCollisionPointRec(GetMousePosition(), objectBounds)) {
            printf("SEND HELP");
            isObjectBeingDragged = true;  
            offsetX = object->width /2;
            offsetY = object->height /2;
            
            objectPosition->x = GetMouseX() - offsetX;
            objectPosition->y = GetMouseY() - offsetY;
            return true;
        }
    }

    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON)) {
        isObjectBeingDragged = false;

        if (CheckCollisionRecs(objectBounds, *dropArea)) {
            // Object is inside the drop area, snap it to the center of the area
            objectPosition->x = dropArea->x + dropArea->width / 2 - object->width / 2;
            objectPosition->y = dropArea->y + dropArea->height / 2 - object->height / 2;
        } else {
            // Object is not inside the drop area, return it to the original position
            objectPosition->x = originalPosition.x;
            objectPosition->y = originalPosition.y;
        }
    }

    return false;
}


int main(void)
{
    InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, WINDOW_TITLE);
    SetTargetFPS(TARGET_FPS);

    Texture2D texture = LoadTexture(ASSETS_PATH"test.png");

    Texture2D cat = LoadTexture(ASSETS_PATH"cat.png");
    Vector2 catPosition = {100,100};

    Texture2D tea = LoadTexture(ASSETS_PATH"tea.png");
    Vector2 teaPosition = {600,250};

    Vector2 platePosition = { 1000, 300 };
    Rectangle plateArea = { platePosition.x, platePosition.y, 200, 200 };
    bool dragging = false;
    Texture2D* current_dragging = NULL;

    while (!WindowShouldClose())
    {   
        if(current_dragging == NULL || current_dragging == &cat ){
            dragging = DragAndDrop(&cat, &catPosition, &plateArea, originalCatPosition);
            if(dragging){
                current_dragging = &cat;
            }else{
                current_dragging = NULL;
            }
        }
        if(current_dragging == NULL || current_dragging == &tea ){
            dragging = DragAndDrop(&tea, &teaPosition, &plateArea, originalTeaPosition);
            if(dragging){
                current_dragging = &tea;
            }else{
                current_dragging = NULL;
            }
        }
        

        BeginDrawing();

        ClearBackground(RAYWHITE);

        const int texture_x = SCREEN_WIDTH / 2 - texture.width / 2;
        const int texture_y = SCREEN_HEIGHT / 2 - texture.height / 2;
        DrawTexture(texture, texture_x, texture_y, WHITE);

        DrawTexture(cat, catPosition.x ,catPosition.y, WHITE);
        DrawTexture(tea, teaPosition.x ,teaPosition.y, WHITE);
        
        DrawRectangleLines((int)catPosition.x, (int)catPosition.y, cat.width, cat.height, RED);

        DrawRectangle(platePosition.x, platePosition.y, 200 ,200, RED);
        
        const char* text = "It works :3";
        const Vector2 text_size = MeasureTextEx(GetFontDefault(), text, 20, 1);
        DrawText(text, SCREEN_WIDTH / 2 - text_size.x / 2, texture_y + texture.height + text_size.y + 10, 20, BLACK);

        EndDrawing();
    }

    CloseWindow();

    return 0;
}

