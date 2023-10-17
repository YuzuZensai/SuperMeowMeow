#include "raylib.h"

#define SCREEN_WIDTH (1280)
#define SCREEN_HEIGHT (720)
#define TARGET_FPS (60)

#define WINDOW_TITLE "Window title"

void DragAndDrop(Texture2D* object, Vector2* objectPosition) {

    static bool isObjectBeingDragged = false;
    static float offsetX = 0;
    static float offsetY = 0;

    if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)) {
        Rectangle objectBounds = { objectPosition->x, objectPosition->y, (float)object->width, (float)object->height };
        if (CheckCollisionPointRec(GetMousePosition(), objectBounds)) {
            isObjectBeingDragged = true;
            offsetX = objectPosition->x - GetMouseX();
            offsetY = objectPosition->y - GetMouseY();
        }
    }

    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON)) {
        isObjectBeingDragged = false;
    }

    if (isObjectBeingDragged) {
        objectPosition->x = GetMouseX() + offsetX;
        objectPosition->y = GetMouseY() + offsetY;
    }
}

int main(void)
{
    InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, WINDOW_TITLE);
    SetTargetFPS(TARGET_FPS);

    Texture2D texture = LoadTexture(ASSETS_PATH"test.png");
    Texture2D cat = LoadTexture(ASSETS_PATH"cat.png");
    Vector2 catPosition = {500,500};   

    

    bool isObjectBeingDragged = false;

    while (!WindowShouldClose())
    {   
        DragAndDrop(&cat, &catPosition);

        BeginDrawing();

        ClearBackground(RAYWHITE);

        const int texture_x = SCREEN_WIDTH / 2 - texture.width / 2;
        const int texture_y = SCREEN_HEIGHT / 2 - texture.height / 2;
        DrawTexture(texture, texture_x, texture_y, WHITE);
        DrawTexture(cat, catPosition.x ,catPosition.y, WHITE);
        DrawRectangleLines((int)catPosition.x, (int)catPosition.y, cat.width, cat.height, RED);

        const char* text = "It works :3";
        const Vector2 text_size = MeasureTextEx(GetFontDefault(), text, 20, 1);
        DrawText(text, SCREEN_WIDTH / 2 - text_size.x / 2, texture_y + texture.height + text_size.y + 10, 20, BLACK);

        EndDrawing();
    }

    CloseWindow();

    return 0;
}
