#include "raylib.h"
#include "raymath.h"
#include <math.h>

#define baseScreenWidth 1920
#define baseScreenHeight 1080

const float baseX = -(baseScreenWidth / 2);
const float baseY = -(baseScreenHeight / 2);
const float targetAspectRatio = (float)baseScreenWidth / (float)baseScreenHeight;

void SetRuntimeResolution(Camera2D *camera, int screenWidth, int screenHeight)
{
    SetWindowSize(screenWidth, screenHeight);
    float currentAspectRatio = (float)screenWidth / (float)screenHeight;
    float scale = (currentAspectRatio > targetAspectRatio) ? (float)screenHeight / baseScreenHeight : (float)screenWidth / baseScreenWidth;

    camera->zoom = scale;
    camera->offset.x = screenWidth / 2.0f;
    camera->offset.y = screenHeight / 2.0f;
}

void WindowUpdate(Camera2D* camera)
{
    if (IsWindowResized())
    {
        int screenWidth = GetScreenWidth();
        int screenHeight = GetScreenHeight();

        float currentAspectRatio = (float)screenWidth / (float)screenHeight;
        float scale = (currentAspectRatio > targetAspectRatio) ? (float)screenHeight / baseScreenHeight : (float)screenWidth / baseScreenWidth;

        camera->zoom = scale;
        camera->offset.x = screenWidth / 2.0f;
        camera->offset.y = screenHeight / 2.0f;
    }

    // Alt - Enter fullscreen
    if (IsKeyDown(KEY_LEFT_ALT) && IsKeyPressed(KEY_ENTER))
    {
        SetRuntimeResolution(camera, baseScreenWidth, baseScreenHeight);
        ToggleFullscreen();
    }
}

void GameUpdate(Camera2D* camera)
{
    Texture2D backgroundTexture = LoadTexture(ASSETS_PATH"Background.png");

    float circleRadius = 30.0f;
    Vector2 circlePosition = { 100, 50 };
    bool isDragging = false;

    while (!WindowShouldClose())
    {
        WindowUpdate(camera);
        if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
        {
            //Vector2 mousePos = GetMousePosition();

            // Convert mouse position to world space, taking into account camera zoom
            //mousePos.x = (mousePos.x - GetScreenWidth() / 2.0f) / camera->zoom + camera->target.x;
            //mousePos.y = (mousePos.y - GetScreenHeight() / 2.0f) / camera->zoom + camera->target.y;

            // Convert mouse position from screen space to world space
            Vector2 mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), *camera);

            // Calculate the vector from the circle's center to the mouse position
            Vector2 circleToMouse = Vector2Subtract(mouseWorldPos, circlePosition);

            // Check if the mouse click is within the circle (distance <= circleRadius)
            if (Vector2Length(circleToMouse) <= circleRadius)
            {
                isDragging = true;
            }
        }
        else if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON))
        {
            isDragging = false;
        }

        if (isDragging)
        {
            // Update circle position during dragging, considering camera zoom
            circlePosition = GetMousePosition();
            circlePosition.x = (circlePosition.x - GetScreenWidth() / 2.0f) / camera->zoom + camera->target.x;
            circlePosition.y = (circlePosition.y - GetScreenHeight() / 2.0f) / camera->zoom + camera->target.y;
        }


        // Draw

        BeginDrawing();
        ClearBackground(BLACK);


        BeginMode2D(*camera);


        int imageWidth = backgroundTexture.width;
        int imageHeight = backgroundTexture.height;

        float scaleX = (float)baseScreenWidth / imageWidth;
        float scaleY = (float)baseScreenHeight / imageHeight;

        // Draw the background with the scaled dimensions
        DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);


        // Draw circle
        DrawCircleV(circlePosition, circleRadius, BLUE);

        // Text
        DrawTextEx(GetFontDefault(), "Hello, Test!", (Vector2) { baseX + 20, baseY + 20 }, 20, 2, WHITE);

        EndMode2D();

        EndDrawing();
    }
    CloseWindow();

}

void MainMenuUpdate(Camera2D* camera)
{
    Texture2D backgroundTexture = LoadTexture(ASSETS_PATH"Background.png");

    // Button positions and dimensions
    Rectangle startButtonRect = { baseX + 100, baseY + 30, 200, 50 };
    Rectangle optionsButtonRect = { baseX + 100, baseY + 120, 200, 50 };
    Rectangle exitButtonRect = { baseX + 100, baseY + 320, 200, 50 };

    while (!WindowShouldClose())
    {
        WindowUpdate(camera);

        // Convert mouse position from screen space to world space
        Vector2 mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), *camera);

        bool isStartButtonHovered = CheckCollisionPointRec(mouseWorldPos, startButtonRect);
        bool isOptionsButtonHovered = CheckCollisionPointRec(mouseWorldPos, optionsButtonRect);
        bool isExitButtonHovered = CheckCollisionPointRec(mouseWorldPos, exitButtonRect);

        // Check for button clicks
        if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
        {
            if (isStartButtonHovered)
            {
                GameUpdate(camera);
                break;
            }
            else if (isOptionsButtonHovered)
            {
                // Handle Options button click (you can add your logic here)
                // For now, we'll just print a message
                printf("Options button clicked!\n");
            }
            else if (isExitButtonHovered)
            {
                // Handle Exit Game button click (you can add your logic here)
                // For now, we'll just close the window
                CloseWindow();
            }
        }

        // Draw

        BeginDrawing();
        ClearBackground(BLACK);


        BeginMode2D(*camera);


        int imageWidth = backgroundTexture.width;
        int imageHeight = backgroundTexture.height;

        float scaleX = (float)baseScreenWidth / imageWidth;
        float scaleY = (float)baseScreenHeight / imageHeight;

        // Draw the background with the scaled dimensions
        DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw buttons
        DrawRectangleRec(startButtonRect, isStartButtonHovered ? SKYBLUE : BLUE);
        DrawRectangleRec(optionsButtonRect, isOptionsButtonHovered ? SKYBLUE : BLUE);
        DrawRectangleRec(exitButtonRect, isExitButtonHovered ? SKYBLUE : BLUE);

        // Draw button labels
        DrawText("Start Game", (int)(startButtonRect.x + 40), (int)(startButtonRect.y + 15), 20, WHITE);
        DrawText("Options", (int)(optionsButtonRect.x + 60), (int)(optionsButtonRect.y + 15), 20, WHITE);
        DrawText("Exit Game", (int)(exitButtonRect.x + 40), (int)(exitButtonRect.y + 15), 20, WHITE);


        EndMode2D();
        EndDrawing();
    }
    CloseWindow();
}

int main()
{
    SetConfigFlags(FLAG_WINDOW_RESIZABLE);

    InitWindow(baseScreenWidth, baseScreenHeight, "SuperMeowMeow");

    // Center of screen
    SetWindowPosition(200, 200);

    Camera2D camera = { 0 };
    camera.target = (Vector2){ 0.0f, 0.0f };
    camera.offset = (Vector2){ baseScreenWidth / 2.0f, baseScreenHeight / 2.0f };
    camera.rotation = 0.0f;
    camera.zoom = 1.0f;

    SetTargetFPS(60);
    SetRuntimeResolution(&camera, 1280, 720);

    float willGoFullscreenNextFrame = true;

    MainMenuUpdate(&camera);
    return 0;
}
