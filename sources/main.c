#include "raylib.h"
#include "raymath.h"
#include <math.h>

#define baseScreenWidth 1920
#define baseScreenHeight 1080

typedef struct {
    Vector2 position;
    Vector2 speed;
    Color color;
    float radius;
} Ball;


const float targetAspectRatio = (float)baseScreenWidth / (float)baseScreenHeight;

void setRuntimeResolution(Camera2D *camera, int screenWidth, int screenHeight)
{
    SetWindowSize(screenWidth, screenHeight);
    float currentAspectRatio = (float)screenWidth / (float)screenHeight;
    float scale = (currentAspectRatio > targetAspectRatio) ? (float)screenHeight / baseScreenHeight : (float)screenWidth / baseScreenWidth;

    camera->zoom = scale;
    camera->offset.x = screenWidth / 2.0f;
    camera->offset.y = screenHeight / 2.0f;
}

int main()
{
    int frameCounter = 0;
    int fps = 0;
    double previousTime = GetTime();

    float baseX = - (baseScreenWidth / 2);
    float baseY = - (baseScreenHeight / 2);

    SetConfigFlags(FLAG_WINDOW_RESIZABLE);

    InitWindow(baseScreenWidth, baseScreenHeight, "SuperMeowMeow");

    // Center of screen
    SetWindowPosition(200, 200);

    Camera2D camera = { 0 };
    camera.target = (Vector2){ 0.0f, 0.0f };
    camera.offset = (Vector2){ baseScreenWidth / 2.0f, baseScreenHeight / 2.0f };
    camera.rotation = 0.0f;
    camera.zoom = 1.0f;

    float circleRadius = 30.0f;
    Vector2 circlePosition = { 100, 50 };
    bool isDragging = false;

    SetTargetFPS(420);

    Texture2D backgroundTexture = LoadTexture(ASSETS_PATH"Background.png");


    float willGoFullscreenNextFrame = true;

    Ball balls[20];
    for (int i = 0; i < 20; i++) {
        balls[i].position = (Vector2){ GetRandomValue(baseX, baseScreenWidth), GetRandomValue(baseY, baseScreenHeight) };
        balls[i].speed = (Vector2){ GetRandomValue(-5, 5), GetRandomValue(-5, 5) };
        balls[i].color = (Color){ GetRandomValue(50, 255), GetRandomValue(50, 255), GetRandomValue(50, 255), 255 };
        balls[i].radius = 30.0f;
    }

    setRuntimeResolution(&camera, 1280, 720);

    while (!WindowShouldClose())
    {

        if (IsWindowResized())
        {
            int screenWidth = GetScreenWidth();
            int screenHeight = GetScreenHeight();

            float currentAspectRatio = (float)screenWidth / (float)screenHeight;
            float scale = (currentAspectRatio > targetAspectRatio) ? (float)screenHeight / baseScreenHeight : (float)screenWidth / baseScreenWidth;

            camera.zoom = scale;
            camera.offset.x = screenWidth / 2.0f;
            camera.offset.y = screenHeight / 2.0f;
        }

        // Alt - Enter fullscreen
        if (IsKeyDown(KEY_LEFT_ALT) && IsKeyPressed(KEY_ENTER))
		{
            setRuntimeResolution(&camera, baseScreenWidth, baseScreenHeight);
            ToggleFullscreen();
		}


        if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON))
        {
            Vector2 mousePos = GetMousePosition();

            // Convert mouse position to world space, taking into account camera zoom
            mousePos.x = (mousePos.x - GetScreenWidth() / 2.0f) / camera.zoom + camera.target.x;
            mousePos.y = (mousePos.y - GetScreenHeight() / 2.0f) / camera.zoom + camera.target.y;

            // Calculate the vector from the circle's center to the mouse position
            Vector2 circleToMouse = Vector2Subtract(mousePos, circlePosition);

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
            circlePosition.x = (circlePosition.x - GetScreenWidth() / 2.0f) / camera.zoom + camera.target.x;
            circlePosition.y = (circlePosition.y - GetScreenHeight() / 2.0f) / camera.zoom + camera.target.y;
        }

        // Update balls' positions
        for (int i = 0; i < 20; i++) {
            balls[i].position.x += balls[i].speed.x;
            balls[i].position.y += balls[i].speed.y;

            // Bounce off the walls
            if ((balls[i].position.x + balls[i].radius) >= baseScreenWidth || (balls[i].position.x - balls[i].radius) <= 0)
                balls[i].speed.x *= -1;

            if ((balls[i].position.y + balls[i].radius) >= baseScreenHeight || (balls[i].position.y - balls[i].radius) <= 0)
                balls[i].speed.y *= -1;
        }


        // Draw

        BeginDrawing();
        ClearBackground(BLACK);


        BeginMode2D(camera);


        int imageWidth = backgroundTexture.width;
        int imageHeight = backgroundTexture.height;

        float scaleX = (float)baseScreenWidth / imageWidth;
        float scaleY = (float)baseScreenHeight / imageHeight;

        // Draw the background with the scaled dimensions
        DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw balls
        for (int i = 0; i < 20; i++) {
            DrawCircleV(balls[i].position, balls[i].radius, balls[i].color);
        }


        // Draw circle
        DrawCircleV(circlePosition, circleRadius, BLUE);

        // Calculate FPS
        frameCounter++;
        double currentTime = GetTime();
        if (currentTime - previousTime >= 1.0)
        {
            fps = frameCounter;
            frameCounter = 0;
            previousTime = currentTime;
        }

        // Text
        char fpsText[20];
        sprintf(fpsText, "FPS: %d", fps);

        DrawTextEx(GetFontDefault(), fpsText, (Vector2) { baseX + 20, baseY + 20 }, 20, 2, WHITE);

        EndMode2D();

        EndDrawing();
    }

    CloseWindow();

    return 0;
}
