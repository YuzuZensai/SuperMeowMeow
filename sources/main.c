#include "raylib.h"
#include "raymath.h"
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

#define DEBUG_FASTLOAD true
#define baseScreenWidth 1920
#define baseScreenHeight 1080

const float baseX = -(baseScreenWidth / 2);
const float baseY = -(baseScreenHeight / 2);
const float targetAspectRatio = (float)baseScreenWidth / (float)baseScreenHeight;
const int targetFps = 300;

Texture2D logoTexture;
Texture2D splashBackgroundTexture;
Texture2D splashOverlayTexture;
Texture2D backgroundTexture;
Texture2D pawTexture;
//customer
Texture2D customerTexture_first_happy;
Texture2D customerTexture_second_happy;
Texture2D customerTexture_third_happy;
Texture2D customerTexture_first_normal;
Texture2D customerTexture_second_normal;
Texture2D customerTexture_third_normal;
Texture2D customerTexture_first_angry;
Texture2D customerTexture_second_angry;
Texture2D customerTexture_third_angry;
//customer
Font meowFont;
Sound select;
Sound hover;

typedef enum {
    EASY,
    MEDIUM,
    HARD
} Difficulty;

static inline char* StringFromDifficultyEnum(Difficulty difficulty)
{
    static const char* strings[] = { "Easy", "Medium", "Hard" };
    return strings[difficulty];
}

typedef struct Resolution {
	int x;
	int y;
} Resolution;

// Game Options in struct
typedef struct GameOptions {
    Resolution resolution;
	int targetFps;
	bool fullscreen;
    Difficulty difficulty;
} GameOptions;

GameOptions *options;

void SetRuntimeResolution(Camera2D *camera, int screenWidth, int screenHeight)
{
    SetWindowSize(screenWidth, screenHeight);
    float currentAspectRatio = (float)screenWidth / (float)screenHeight;
    float scale = (currentAspectRatio > targetAspectRatio) ? (float)screenHeight / baseScreenHeight : (float)screenWidth / baseScreenWidth;

    camera->zoom = scale;
    camera->offset.x = screenWidth / 2.0f;
    camera->offset.y = screenHeight / 2.0f;

    options->resolution.x = screenWidth;
    options->resolution.y = screenHeight;
}

// Function prototype
void MainMenuUpdate(Camera2D* camera, bool playFade);
void OptionsUpdate(Camera2D* camera);

/* Definitions of this branch */

typedef struct Order { //text-based-combinations
	char *first;
	char *second;
	char *third;
	char *fourth;
} Order;

typedef struct Customer {
	//int patience; //To be removed. 
	int state; //1 for happy 2 for neutral 3 for angry
	int visible;
	Order *order;
	int currentTime;
	int orderEnd;
} Customer;

typedef struct Customers {
	Customer customer1;
	Customer customer2;
	Customer customer3;
} Customers;



// TO BE DESTROYED
#define PLACEHOLDER_ORDER "PLACEHOLDER_ORDER"
static int placeholder_static = 1;
static int global_score = 0;


void create_customer(Customer *customer, int patience, Order order, int currentTime, int orderEnd) {
	customer->visible = 1;
	customer->state = 1;
	customer->order = &order;
	customer->currentTime = currentTime;
	customer->orderEnd = orderEnd * patience;
}

//create customer image at either position 1 2 or 3
void render_customers(Customers *customers)
{
	//customer 1
	if (customers->customer1.visible == 1)
	{
		if (customers->customer1.state == 1)
		{
			DrawTextureEx(customerTexture_first_happy, (Vector2) { baseX, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
		else if (customers->customer1.state == 2)
		{
			DrawTextureEx(customerTexture_first_normal, (Vector2) { baseX, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
		else if (customers->customer1.state == 3)
		{
			DrawTextureEx(customerTexture_first_angry, (Vector2) { baseX, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
	}
	//customer 2
	if (customers->customer2.visible == 1)
	{
		if (customers->customer2.state == 1)
		{
			DrawTextureEx(customerTexture_second_happy, (Vector2) { baseX + 600, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
		else if (customers->customer2.state == 2)
		{
			DrawTextureEx(customerTexture_second_normal, (Vector2) { baseX + 600, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
		else if (customers->customer2.state == 3)
		{
			DrawTextureEx(customerTexture_second_angry, (Vector2) { baseX + 600, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
	}
	//customer 3
	if (customers->customer3.visible == 1)
	{
		if (customers->customer3.state == 1)
		{
			DrawTextureEx(customerTexture_third_happy, (Vector2) { baseX + 1200, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
		else if (customers->customer3.state == 2)
		{
			DrawTextureEx(customerTexture_third_normal, (Vector2) { baseX + 1200, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
		else if (customers->customer3.state == 3)
		{
			DrawTextureEx(customerTexture_third_angry, (Vector2) { baseX + 1200, baseY + 100 }, 0.0f, 1.0f, WHITE);
		}
	}
}

void remove_customers(Customer *customer, int position)
{
	customer->visible = 0;
}

void Tick(Customers *customers)
{
	//customer 1
	if (customers->customer1.visible == 1)
	{
		if (customers->customer1.currentTime < customers->customer1.orderEnd)
		{
			customers->customer1.currentTime++;
			if (customers->customer1.currentTime > customers->customer1.orderEnd / 2)
			{
				customers->customer1.state = 3;
			}
			else if (customers->customer1.currentTime > customers->customer1.orderEnd / 4)
			{
				customers->customer1.state = 2;
			}
		}
		else
		{
			remove_customers(&customers->customer1, 1);
			global_score -= 50;
		}
	}
	//customer 2
	if (customers->customer2.visible == 1)
	{
		if (customers->customer2.currentTime < customers->customer2.orderEnd)
		{
			customers->customer2.currentTime++;
			if (customers->customer2.currentTime > customers->customer2.orderEnd / 2)
			{
				customers->customer2.state = 3;
			}
			else if (customers->customer2.currentTime > customers->customer2.orderEnd / 4)
			{
				customers->customer2.state = 2;
			}
		}
		else
		{
			remove_customers(&customers->customer2, 2);
			global_score -= 50;
		}
	}
	//customer 3
	if (customers->customer3.visible == 1)
	{
		if (customers->customer3.currentTime < customers->customer3.orderEnd)
		{
			customers->customer3.currentTime++;
			if (customers->customer3.currentTime > customers->customer3.orderEnd / 2)
			{
				customers->customer3.state = 3;
			}
			else if (customers->customer3.currentTime > customers->customer3.orderEnd / 4)
			{
				customers->customer3.state = 2;
			}
		}
		else
		{
			remove_customers(&customers->customer3, 3);
			global_score -= 50;
		}
	}
}
//Yandere dev inspired programming.

/* Definitions terminates*/




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

        options->resolution.x = screenWidth;
        options->resolution.y = screenHeight;
    }

    // Alt - Enter fullscreen
    if (IsKeyDown(KEY_LEFT_ALT) && IsKeyPressed(KEY_ENTER) || IsKeyDown(KEY_RIGHT_ALT) && IsKeyPressed(KEY_ENTER))
    {
        SetRuntimeResolution(camera, baseScreenWidth, baseScreenHeight);
        ToggleFullscreen();
    }
}

void LoadGlobalAssets()
{
    backgroundTexture = LoadTexture(ASSETS_PATH"image/backgrounds/main.png");
    pawTexture = LoadTexture(ASSETS_PATH"image/elements/paw.png");
    meowFont = LoadFontEx(ASSETS_PATH"font/Meows-VGWjy.ttf", 256, 0, 250);
	customerTexture_first_happy = LoadTexture(ASSETS_PATH"image/sprite/customer_happy.png");
	customerTexture_second_happy = LoadTexture(ASSETS_PATH"image/sprite/customer_happy.png");
	customerTexture_third_happy = LoadTexture(ASSETS_PATH"image/sprite/customer_happy.png");
	customerTexture_first_normal = LoadTexture(ASSETS_PATH"image/sprite/customer_normal.png");
	customerTexture_second_normal = LoadTexture(ASSETS_PATH"image/sprite/customer_normal.png");
	customerTexture_third_normal = LoadTexture(ASSETS_PATH"image/sprite/customer_normal.png");
	customerTexture_first_angry = LoadTexture(ASSETS_PATH"image/sprite/customer_angry.png");
	customerTexture_second_angry = LoadTexture(ASSETS_PATH"image/sprite/customer_angry.png");
	customerTexture_third_angry = LoadTexture(ASSETS_PATH"image/sprite/customer_angry.png");

    hover = LoadSound(ASSETS_PATH"audio/hover.wav");
    select = LoadSound(ASSETS_PATH"audio/select.wav");
}

void UnloadGlobalAssets()
{
    UnloadTexture(backgroundTexture);
}

void ExitApplication()
{
    UnloadGlobalAssets();
    
    // Exit with exit code 0
    exit(0);
}


void OptionsUpdate(Camera2D* camera)
{
    // Define rectangles for UI elements (e.g., buttons, dropdowns)
    Rectangle difficultyRect = { baseX + 100, baseY + 30, 200, 50 };
    Rectangle resolutionRect = { baseX + 100, baseY + 120, 200, 50 };
    Rectangle fpsRect = { baseX + 100, baseY + 220, 200, 50 };
    Rectangle fullscreenRect = { baseX + 100, baseY + 320, 200, 50 };
    Rectangle backRect = { baseX + 100, baseY + 480, 200, 50 };

    bool firstRender = true;

    while (!WindowShouldClose())
    {
        WindowUpdate(camera);

        // Convert mouse position from screen space to world space
        Vector2 mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), *camera);

        bool isDifficultySelected = CheckCollisionPointRec(mouseWorldPos, difficultyRect);
        bool isResolutionSelected = CheckCollisionPointRec(mouseWorldPos, resolutionRect);
        bool isFpsSelected = CheckCollisionPointRec(mouseWorldPos, fpsRect);
        bool isFullscreenToggled = CheckCollisionPointRec(mouseWorldPos, fullscreenRect);
        bool isBackSelected = CheckCollisionPointRec(mouseWorldPos, backRect);

        // Handle user input
        if (!firstRender && IsMouseButtonPressed(MOUSE_LEFT_BUTTON)) {
            if (isDifficultySelected) {
                // Toggle difficulty (cycle through the options)
                options->difficulty = (options->difficulty + 1) % 3;
            }
            else if (isResolutionSelected) {
                // 1280x720, 1920x1080
                if (options->resolution.x == 1920) {
                    options->resolution.x = 1280;
                    options->resolution.y = 720;
                }
                else if (options->resolution.x == 1280) {
					options->resolution.x = 1920;
					options->resolution.y = 1080;
				}
                else
                {
                    // Custom resize resolution
                    // Change it to closest resolution, either 1280x720, 1920x1080
                    if (options->resolution.x > 1600) {
						options->resolution.x = 1920;
						options->resolution.y = 1080;
					}
					else {
						options->resolution.x = 1280;
						options->resolution.y = 720;
					}

                }
                SetRuntimeResolution(camera, options->resolution.x, options->resolution.y);
            }
            else if (isFpsSelected) {
                // Change target FPS 30, 60, 120, 144, 240, Basically Unlimited (1000)
                if (options->targetFps == 30) {
					options->targetFps = 60;
				}
				else if (options->targetFps == 60) {
					options->targetFps = 120;
				}
				else if (options->targetFps == 120) {
					options->targetFps = 144;
				}
				else if (options->targetFps == 144) {
					options->targetFps = 240;
				}
				else if (options->targetFps == 240) {
					options->targetFps = 1000;
				}
				else if (options->targetFps == 1000) {
					options->targetFps = 30;
				}
            }
            else if (isFullscreenToggled) {
                // Toggle fullscreen
                options->fullscreen = !options->fullscreen;
                SetRuntimeResolution(camera, options->resolution.x, options->resolution.y);
                ToggleFullscreen();
            }
            else if (isBackSelected) {
				// Go back to main menu
				MainMenuUpdate(camera, false);
				break;
			}
        }

        if (firstRender)
            firstRender = false;

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

        // Draw UI elements
        DrawRectangleRec(difficultyRect, isDifficultySelected ? SKYBLUE : BLUE);
        DrawRectangleRec(resolutionRect, isResolutionSelected ? SKYBLUE : BLUE);
        DrawRectangleRec(fpsRect, isFpsSelected ? SKYBLUE : BLUE);
        DrawRectangleRec(fullscreenRect, isFullscreenToggled ? SKYBLUE : BLUE);
        DrawRectangleRec(backRect, isBackSelected ? SKYBLUE : BLUE);

        char difficultyText[50];
        sprintf(difficultyText, "Difficulty: %s", StringFromDifficultyEnum(options->difficulty));

        char targetFpsText[20];
        sprintf(targetFpsText, "Fps: %d", options->targetFps);

        char resolutionText[20];
        sprintf(resolutionText, "%dx%d", options->resolution.x, options->resolution.y);

        DrawText(difficultyText, (int)(difficultyRect.x + 40), (int)(difficultyRect.y + 15), 20, WHITE);
        DrawText(resolutionText, (int)(resolutionRect.x + 40), (int)(resolutionRect.y + 15), 20, WHITE);
        DrawText(targetFpsText, (int)(fpsRect.x + 40), (int)(fpsRect.y + 15), 20, WHITE);
        DrawText("Fullscreen", (int)(fullscreenRect.x + 40), (int)(fullscreenRect.y + 15), 20, WHITE);
        DrawText("Back", (int)(backRect.x + 40), (int)(backRect.y + 15), 20, WHITE);

        EndMode2D();
        EndDrawing();
    }

    UnloadTexture(backgroundTexture);
    CloseWindow();
}

void GameUpdate(Camera2D *camera)
{
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

		/* Customers */

		
		Customer customer1;
		Order order1;
		Customer customer2;
		Order order2;
		Customer customer3;
		Order order3;
		Customers customers;

		if (placeholder_static == 1)
		{
			order1.first = PLACEHOLDER_ORDER;
			order1.second = PLACEHOLDER_ORDER;
			order1.third = PLACEHOLDER_ORDER;
			order1.fourth = PLACEHOLDER_ORDER;
			create_customer(&customer1, 1, order1 , 0, 1000);
		
			order2.first = PLACEHOLDER_ORDER;
			order2.second = PLACEHOLDER_ORDER;
			order2.third = PLACEHOLDER_ORDER;
			order2.fourth = PLACEHOLDER_ORDER;
			create_customer(&customer2, 1, order2, 0, 5000);


			order3.first = PLACEHOLDER_ORDER;
			order3.second = PLACEHOLDER_ORDER;
			order3.third = PLACEHOLDER_ORDER;
			order3.fourth = PLACEHOLDER_ORDER;
			create_customer(&customer3, 1, order3, 0, 10000);

			customers.customer1 = customer1;
			customers.customer2 = customer2;
			customers.customer3 = customer3;

			placeholder_static = 0;
		}
		Tick(&customers);
		render_customers(&customers);

		/* Customers TEST AREA END*/


        // Draw circle
        DrawCircleV(circlePosition, circleRadius, BLUE);

        // Text
		char *scoreText = TextFormat("Score: %d", global_score);
        DrawTextEx(GetFontDefault(), scoreText, (Vector2) { baseX + 20, baseY + 20 }, 20, 2, WHITE);
        EndMode2D();

        EndDrawing();
    }

    UnloadTexture(backgroundTexture);
    CloseWindow();

}


void MainMenuUpdate(Camera2D *camera, bool playFade)
{
    // Button positions and dimensions
    Rectangle startButtonRect = { baseX + 100, baseY + 60, 400, 100 };
    Rectangle optionsButtonRect = { baseX + 100, baseY + 160, 400, 100 };
    Rectangle exitButtonRect = { baseX + 100, baseY + 350, 400, 100 };

    float fadeOutDuration = 1.0f;
    double currentTime = 0;

    int splashBackgroundImageWidth = splashBackgroundTexture.width;
    int splashBackgroundImageHeight = splashBackgroundTexture.height;

    float splashBackgroundScaleX = (float)baseScreenWidth / splashBackgroundImageWidth;
    float splashBackgroundScaleY = (float)baseScreenHeight / splashBackgroundImageHeight;

    bool isFadeOutDone = false;


    Rectangle buttons[] = { startButtonRect, optionsButtonRect, exitButtonRect };
    int currentHoveredButton = NULL;
    bool isHovering = false;

    while (!WindowShouldClose())
    {
        if(!isFadeOutDone)
            currentTime += GetFrameTime();

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
                PlaySound(select);
                GameUpdate(camera);
                break;
            }
            else if (isOptionsButtonHovered)
            {
                PlaySound(select);
                OptionsUpdate(camera);
                break;
            }
            else if (isExitButtonHovered)
            {
                ExitApplication();
            }
        }

        // Play sound when hovering over a button, but only once
        if (isStartButtonHovered)
        {    
            if (!isHovering || currentHoveredButton != 0)
			{
				PlaySound(hover);
				isHovering = true;
			}
            currentHoveredButton = 0;
		}
		else if (isOptionsButtonHovered)
		{
            if (!isHovering || currentHoveredButton != 1)
			{
                PlaySound(hover);
				isHovering = true;
            }
            currentHoveredButton = 1;
		}
        else if (isExitButtonHovered)
		{
            if (!isHovering || currentHoveredButton != 2)
			{
                PlaySound(hover);
				isHovering = true;
            }
            currentHoveredButton = 2;
		}
        else
		{
            currentHoveredButton = NULL;
            isHovering = false;
		}


        // Draw

        BeginDrawing();
        BeginMode2D(*camera);
        ClearBackground(RAYWHITE);

        int imageWidth = backgroundTexture.width;
        int imageHeight = backgroundTexture.height;

        float scaleX = (float)baseScreenWidth / imageWidth;
        float scaleY = (float)baseScreenHeight / imageHeight;

        // Draw the background with the scaled dimensions
        DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw buttons
        /*
        DrawRectangleRec(startButtonRect, isStartButtonHovered ? SKYBLUE : BLUE);
        DrawRectangleRec(optionsButtonRect, isOptionsButtonHovered ? SKYBLUE : BLUE);
        DrawRectangleRec(exitButtonRect, isExitButtonHovered ? SKYBLUE : BLUE);
        */

        // Draw button labels
        DrawTextEx(meowFont, "Start Game", (Vector2) { (int)(startButtonRect.x + 40), (int)(startButtonRect.y + 15)}, 60, 2, isStartButtonHovered ? BLACK : WHITE);
        DrawTextEx(meowFont, "Options", (Vector2) { (int)(optionsButtonRect.x + 40), (int)(optionsButtonRect.y + 15) }, 60, 2, isOptionsButtonHovered ? BLACK : WHITE);
        DrawTextEx(meowFont, "Exit", (Vector2) { (int)(exitButtonRect.x + 40), (int)(exitButtonRect.y + 15) }, 60, 2, isExitButtonHovered ? BLACK : WHITE);

        // Calculate alpha based on the current time
        if (playFade)
        {
            float alpha = (float)(255.0 * (1.0 - fmin(currentTime / fadeOutDuration, 1.0)));
            if (!isFadeOutDone && alpha != 0)
                DrawTextureEx(splashBackgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(splashBackgroundScaleX, splashBackgroundScaleY), (Color) { 255, 255, 255, alpha });
            else
                isFadeOutDone = true;
        }

        EndMode2D();
        EndDrawing();
    }

    UnloadTexture(backgroundTexture);
    CloseWindow();
}


void SplashUpdate(Camera2D* camera)
{
#if DEBUG_FASTLOAD
    const double beforeStart = 0;
    const double splashDuration = 0;
    const double fadeInDuration = 0;
    const double stayDuration = 0;
    const double fadeOutDuration = 0;
    const double afterEnd = 0;
#else
    const double beforeStart = 1.0;
    const double splashDuration = 8.0;
    const double fadeInDuration = 2.0;
    const double stayDuration = 3.0;
    const double fadeOutDuration = 2.0;
    const double afterEnd = 2.0;
#endif

    double startTime = GetTime();
    double currentTime = 0;

    int imageWidth = splashBackgroundTexture.width;
    int imageHeight = splashBackgroundTexture.height;

    float scaleX = (float)baseScreenWidth / imageWidth;
    float scaleY = (float)baseScreenHeight / imageHeight;

    int imageLogoWidth = logoTexture.width;
    int imageLogoHeight = logoTexture.height;
    float scaleLogoX = (float)baseScreenWidth / imageLogoWidth / 2.5;
    float scaleLogoY = (float)baseScreenHeight / imageLogoHeight / 2.5;

    BeginDrawing();
    BeginMode2D(*camera);
    ClearBackground(RAYWHITE);
    EndMode2D();
    EndDrawing();

    while (currentTime < beforeStart)
    {
        WindowUpdate(camera);
        currentTime = GetTime() - startTime;

        BeginDrawing();
        BeginMode2D(*camera);
        float alpha = (float)(255.0 * (1.0 - fmin(currentTime / beforeStart, 1.0)));

        DrawTextureEx(splashBackgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);
        DrawRectangle(baseX, baseY, baseScreenWidth, baseScreenHeight, (Color) { 255, 255, 255, alpha });
        EndMode2D();
        EndDrawing();
    }

#if !DEBUG_FASTLOAD
    const Sound systemLoad = LoadSound(ASSETS_PATH"audio/Meow1.mp3");
    PlaySound(systemLoad);
#endif

    LoadGlobalAssets();

    // Reset time
    startTime = GetTime();

    while (currentTime < splashDuration)
    {
        WindowUpdate(camera);
        currentTime = GetTime() - startTime;

        int alpha = 0;

        // Calculate alpha based on the current time
        if (currentTime < fadeInDuration) {
            // Fading in
            alpha = (int)(255.0 * (currentTime / fadeInDuration));
        }
        else if (currentTime < fadeInDuration + stayDuration) {
            // Fully visible (staying)
            alpha = 255;
        }
        else {
            // Fading out
            alpha = (int)(255.0 * (1.0 - fmin((currentTime - fadeInDuration - stayDuration) / fadeOutDuration, 1.0)));
        }

        BeginDrawing();
        BeginMode2D(*camera);
        ClearBackground(RAYWHITE);
        DrawTextureEx(splashBackgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);
        DrawTextureEx(splashOverlayTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), (Color) { 255, 255, 255, alpha });
        //DrawTextureEx(logoTexture, (Vector2) { baseX + (imageLogoWidth * scaleLogoX) - 180, baseY }, 0.0f, fmax(scaleLogoX, scaleLogoY), (Color) { 255, 255, 255, alpha });
        EndMode2D();
        EndDrawing();
    }

    

    // Reset time
    startTime = GetTime();


    while (currentTime < afterEnd)
    {
        WindowUpdate(camera);
        currentTime = GetTime() - startTime;

        BeginDrawing();
        BeginMode2D(*camera);
        ClearBackground(RAYWHITE);
        DrawTextureEx(splashBackgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);
        DrawTextureEx(splashOverlayTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);
        EndMode2D();
        EndDrawing();
    }

    // UnloadSound(systemLoad);

    MainMenuUpdate(camera, true);
}





int main()
{
    
    SetConfigFlags(FLAG_WINDOW_RESIZABLE);

    InitWindow(baseScreenWidth, baseScreenHeight, "SuperMeowMeow");
    InitAudioDevice();
    // Center of screen
    SetWindowPosition(200, 200);

    Camera2D camera = { 0 };
    camera.target = (Vector2){ 0.0f, 0.0f };
    camera.offset = (Vector2){ baseScreenWidth / 2.0f, baseScreenHeight / 2.0f };
    camera.rotation = 0.0f;
    camera.zoom = 1.0f;

    GameOptions _options;

    _options.difficulty = MEDIUM;
    _options.resolution = (Resolution){ 1280, 720 };
    _options.targetFps = 240;
    _options.fullscreen = false;  // Default to windowed mode

    options = &_options;


    SetTargetFPS(options->targetFps);
    SetRuntimeResolution(&camera, options->resolution.x, options->resolution.y);

    logoTexture = LoadTexture(ASSETS_PATH"image/elements/studio_logo.png");
    splashBackgroundTexture = LoadTexture(ASSETS_PATH"image/backgrounds/splash.png");
    splashOverlayTexture = LoadTexture(ASSETS_PATH"image/backgrounds/splash_overlay.png");

    SplashUpdate(&camera);
    return 0;
}
