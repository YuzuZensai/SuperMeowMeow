#include "raylib.h"
#include "raymath.h"
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

// Render resolution
#define BASE_SCREEN_WIDTH 1920
#define BASE_SCREEN_HEIGHT 1080

// Debug flags
#define DEBUG_SHOW true
#define DEBUG_FASTLOAD true
#define DEBUG_MAX_FPS_HISTORY 500

// Base values
const float baseX = -(BASE_SCREEN_WIDTH / 2);
const float baseY = -(BASE_SCREEN_HEIGHT / 2);
const float targetAspectRatio = (float)BASE_SCREEN_WIDTH / (float)BASE_SCREEN_HEIGHT;
const int targetFps = 300;

// Debug FPS history
int DebugFpsHistory[DEBUG_MAX_FPS_HISTORY];
int DebugFpsHistoryIndex = 0;

// Debug frame time history
int DebugFrameTimeHistory[DEBUG_MAX_FPS_HISTORY];
int DebugFrameTimeHistoryIndex = 0;

// Runtime resolution
typedef struct Resolution {
    int x;
    int y;
} Resolution;

// Difficulty
typedef enum {
    EASY,
    MEDIUM,
    HARD
} Difficulty;

// Game options
typedef struct GameOptions {
    Resolution resolution;
    int targetFps;
    bool fullscreen;
    Difficulty difficulty;
    bool showDebug;
    bool soundFxEnabled;
    bool musicEnabled;
} GameOptions;

// Colors
Color MAIN_BROWN = { 150, 104, 81, 255 };
Color MAIN_ORANGE = { 245, 167, 128, 255 };

// Textures
Texture2D logoTexture;
Texture2D splashBackgroundTexture;
Texture2D splashOverlayTexture;
Texture2D backgroundTexture;
Texture2D backgroundOverlayTexture;
Texture2D backgroundOverlaySidebarTexture;
Texture2D pawTexture;

// UI Elements
Texture2D checkbox;
Texture2D checkboxChecked;
Texture2D left_arrow;
Texture2D right_arrow;

// Customer
Texture2D customerTexture_first_happy;
Texture2D customerTexture_second_happy;
Texture2D customerTexture_third_happy;
Texture2D customerTexture_first_normal;
Texture2D customerTexture_second_normal;
Texture2D customerTexture_third_normal;
Texture2D customerTexture_first_angry;
Texture2D customerTexture_second_angry;
Texture2D customerTexture_third_angry;

// Font
Font meowFont;

// Sounds
Sound select;
Sound hover;

// BGMs
Music menuBgm;

// Menu falling items
Texture2D menuFallingItemTextures[8];

static inline char* StringFromDifficultyEnum(Difficulty difficulty)
{
    static const char* strings[] = { "Easy", "Medium", "Hard" };
    return strings[difficulty];
}

// Customer textures
typedef struct {
    Texture2D happy;
    Texture2D happyEyesClosed;
    Texture2D frustrated;
    Texture2D frustratedEyesClosed;
    Texture2D angry;
    Texture2D angryEyesClosed;
} CustomerImageData;

CustomerImageData customersImageData[3];

typedef enum {
    TEXTURE_TYPE_HAPPY,
    TEXTURE_TYPE_HAPPY_EYES_CLOSED,
    TEXTURE_TYPE_FRUSTRATED,
    TEXTURE_TYPE_FRUSTRATED_EYES_CLOSED,
    TEXTURE_TYPE_ANGRY,
    TEXTURE_TYPE_ANGRY_EYES_CLOSED
} CustomerTextureFrameType;

// Customer emotions
typedef enum {
    EMOTION_HAPPY,
    EMOTION_FRUSTRATED,
    EMOTION_ANGRY
} CustomerEmotion;

// Order
typedef struct Order { //text-based-combinations
    char* first;
    char* second;
    char* third;
    char* fourth;
} Order;

// Customer
typedef struct Customer {
    CustomerEmotion emotion;
    double blinkTimer;
    double normalDuration;
    double blinkDuration;
    bool eyesClosed;

    //int patience; //To be removed. 
    bool visible;
    Order* order;
    int currentTime;
    int orderEnd;
} Customer;

static inline char* StringFromCustomerEmotionEnum(CustomerEmotion emotion)
{
    static const char* strings[] = { "Happy", "Frustrated", "Angry" };
    return strings[emotion];
}

Customer createCustomer(CustomerEmotion emotion, double blinkTimer, double normalDuration, double blinkDuration, bool visible) {
    Customer newCustomer;
    newCustomer.emotion = emotion;
    newCustomer.blinkTimer = blinkTimer;
    newCustomer.normalDuration = normalDuration;
    newCustomer.blinkDuration = blinkDuration;
    newCustomer.eyesClosed = false;
    newCustomer.visible = visible;
    newCustomer.order = NULL;
    newCustomer.currentTime = NULL;
    newCustomer.orderEnd = NULL;

    return newCustomer;
}

// Customers
typedef struct Customers {
    Customer customer1;
    Customer customer2;
    Customer customer3;
} Customers;

// Menu falling items
typedef struct {
    Vector2 position;
    float rotation;
    int textureIndex;
    float fallingSpeed;
    float rotationSpeed;
} MenuFallingItem;

// Function prototype
void MainMenuUpdate(Camera2D* camera, bool playFade);
void OptionsUpdate(Camera2D* camera);

// Menu customers
Customer menuCustomer1;
Customer menuCustomer2;

// Menu falling items
#define menuFallingItemsNumber 8
MenuFallingItem menuFallingItems[20];
GameOptions *options;

// Current BGM
Music* currentBgm = NULL;
bool isCurrentBgmPaused = false;

// Load duration timer
double loadDurationTimer = 0.0;
bool isGlobalAssetsLoadFinished = false;

double GetRandomDoubleValue(double min, double max)
{
    return min + (rand() / (double)RAND_MAX) * (max - min);
}

void DrawMenuFallingItems(double deltaTime, bool behide)
{
    int startIndex = behide ? 0 : 11;
    int endIndex = behide ? 11 : 20;

    for (int i = startIndex; i < endIndex; i++) {
        MenuFallingItem* item = &menuFallingItems[i];

        item->position.y += item->fallingSpeed * deltaTime;
        item->rotation += item->rotationSpeed * deltaTime;

        Vector2 origin = { (float)menuFallingItemTextures[item->textureIndex].width / 2, (float)menuFallingItemTextures[item->textureIndex].height / 2 };
        DrawTexturePro(menuFallingItemTextures[item->textureIndex], (Rectangle) { 0, 0, menuFallingItemTextures[item->textureIndex].width, menuFallingItemTextures[item->textureIndex].height },
            (Rectangle) {
            item->position.x, item->position.y, menuFallingItemTextures[item->textureIndex].width, menuFallingItemTextures[item->textureIndex].height
        },
            origin, item->rotation, WHITE);

        if (options->showDebug) {
            Vector2 corners[4];
            corners[0] = (Vector2){ -origin.x, -origin.y };
            corners[1] = (Vector2){ -origin.x, origin.y };
            corners[2] = (Vector2){ origin.x, origin.y };
            corners[3] = (Vector2){ origin.x, -origin.y };

            for (int j = 0; j < 4; j++) {
                float tempX = corners[j].x * cos(DEG2RAD * item->rotation) - corners[j].y * sin(DEG2RAD * item->rotation);
                float tempY = corners[j].x * sin(DEG2RAD * item->rotation) + corners[j].y * cos(DEG2RAD * item->rotation);
                corners[j].x = tempX + item->position.x;
                corners[j].y = tempY + item->position.y;
            }

            DrawLineEx(corners[0], corners[1], 1, RED);
            DrawLineEx(corners[1], corners[2], 1, RED);
            DrawLineEx(corners[2], corners[3], 1, RED);
            DrawLineEx(corners[3], corners[0], 1, RED);
            DrawTextEx(meowFont, TextFormat("%d | XY %.2f,%.2f | R %.2f | G %.2f | Behide %s", i, item->position.x, item->position.y, item->rotation, item->fallingSpeed, behide ? "Yes": "No"), (Vector2) { item->position.x, item->position.y }, 20, 1, WHITE);
        }

        if (item->position.y > baseY + BASE_SCREEN_HEIGHT + 1000) {
            item->position = (Vector2){ GetRandomDoubleValue(baseX, baseX + BASE_SCREEN_WIDTH - 20), baseY - GetRandomDoubleValue(200, 1000) };
            item->textureIndex = GetRandomValue(0, menuFallingItemsNumber - 1);
            item->fallingSpeed = GetRandomDoubleValue(1, 3);
            item->fallingSpeed *= 100;
            item->rotation = GetRandomDoubleValue(-360, 360);
            item->rotationSpeed = GetRandomValue(-3, 3);
            item->rotationSpeed *= 100;
            if (abs(item->rotationSpeed) > item->fallingSpeed)
                item->rotationSpeed = item->fallingSpeed;
            if (item->rotationSpeed == 0)
                item->rotationSpeed = 1 * 100;
        }
    }
}

void DrawCustomer(Customer* customer, int frame, Vector2 pos)
{
    if (options->showDebug)
    {
        DrawRectangleLinesEx((Rectangle) { pos.x, pos.y, customersImageData[frame].happy.width / 2, customersImageData[frame].happy.height / 2 }, 1, RED);
        DrawTextEx(meowFont, TextFormat("%s | Blink %s (%.2f) %.2f/%.2f", StringFromCustomerEmotionEnum(customer->emotion), customer->eyesClosed ? "[Yes]" : "[No]", customer->blinkDuration, customer->blinkTimer, customer->normalDuration), (Vector2) { pos.x, pos.y - 20 }, 20, 1, WHITE);
    }
    if (!customer->visible) return;

    switch (customer->emotion)
    {
    case EMOTION_HAPPY:
        DrawTextureEx(!customer->eyesClosed ? customersImageData[frame].happy : customersImageData[frame].happyEyesClosed, pos, 0.0f, 1.0f / 2.0f, WHITE);
        break;
    case EMOTION_FRUSTRATED:
        DrawTextureEx(!customer->eyesClosed ? customersImageData[frame].frustrated : customersImageData[frame].frustratedEyesClosed, pos, 0.0f, 1.0f / 2.0f, WHITE);
        break;
    case EMOTION_ANGRY:
        DrawTextureEx(!customer->eyesClosed ? customersImageData[frame].angry : customersImageData[frame].angryEyesClosed, pos, 0.0f, 1.0f / 2.0f, WHITE);
        break;
    default:
        break;
    }
}

void UpdateMenuCustomerBlink(Customer* customer, double deltaTime) {
    customer->blinkTimer += deltaTime;

    if (!customer->eyesClosed && customer->blinkTimer > customer->normalDuration) {
        customer->blinkTimer = 0.0;
        customer->eyesClosed = true;
    }
    else if (customer->eyesClosed && customer->blinkTimer > customer->blinkDuration) {
        customer->blinkTimer = 0.0;
        customer->eyesClosed = false;
    }
}

void DrawCustomerInMenu(double deltaTime) {
    UpdateMenuCustomerBlink(&menuCustomer1, deltaTime);
    UpdateMenuCustomerBlink(&menuCustomer2, deltaTime);

    // Update customer emotions according to difficulty
    switch (options->difficulty)
    {
        case EASY:
            menuCustomer1.emotion = EMOTION_HAPPY;
            menuCustomer2.emotion = EMOTION_HAPPY;
            break;
        case MEDIUM:
            menuCustomer1.emotion = EMOTION_FRUSTRATED;
            menuCustomer2.emotion = EMOTION_FRUSTRATED;
            break;
        case HARD:
            menuCustomer1.emotion = EMOTION_ANGRY;
            menuCustomer2.emotion = EMOTION_ANGRY;
            break;
        default:
            menuCustomer1.emotion = EMOTION_HAPPY;
            menuCustomer2.emotion = EMOTION_HAPPY;
            break;
            break;
    }
    DrawCustomer(&menuCustomer1, 1, (Vector2) { baseX + 650, baseY + 55 });
    DrawCustomer(&menuCustomer2, 2, (Vector2) { baseX + 1200, baseY + 52 });
}

void DrawOuterWorld()
{
    // Draw area outside the view
    DrawRectangle(baseX, baseY - 2000, BASE_SCREEN_WIDTH, 2000, BLACK);
    DrawRectangle(baseX, baseY + BASE_SCREEN_HEIGHT, BASE_SCREEN_WIDTH, 2000, BLACK);
    DrawRectangle(baseX - 2000, baseY, 2000, BASE_SCREEN_HEIGHT, BLACK);
    DrawRectangle(baseX + BASE_SCREEN_WIDTH, baseY, 2000, BASE_SCREEN_HEIGHT, BLACK);
}

void SetRuntimeResolution(Camera2D *camera, int screenWidth, int screenHeight)
{
    SetWindowSize(screenWidth, screenHeight);
    float currentAspectRatio = (float)screenWidth / (float)screenHeight;
    float scale = (currentAspectRatio > targetAspectRatio) ? (float)screenHeight / BASE_SCREEN_HEIGHT : (float)screenWidth / BASE_SCREEN_WIDTH;

    camera->zoom = scale;
    camera->offset.x = screenWidth / 2.0f;
    camera->offset.y = screenHeight / 2.0f;

    options->resolution.x = screenWidth;
    options->resolution.y = screenHeight;
}

bool IsMousePositionInGameWindow(Camera2D * camera)
{
    Vector2 mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), *camera);
    return mouseWorldPos.x >= baseX && mouseWorldPos.x <= baseX + BASE_SCREEN_WIDTH && mouseWorldPos.y >= baseY && mouseWorldPos.y <= baseY + BASE_SCREEN_HEIGHT;

}

void DrawFpsGraph(Camera2D* camera) {
    int graphWidth = DEBUG_MAX_FPS_HISTORY;
    int graphHeight = 200;
    int graphX = baseX + BASE_SCREEN_WIDTH - 15 - graphWidth;
    int graphY = baseY + 25;

    // Calculate the maximum value in the FPS history
    float maxFpsValue = 0.0f;
    for (int i = 0; i < DEBUG_MAX_FPS_HISTORY; i++) {
        if (DebugFpsHistory[i] > maxFpsValue) {
            maxFpsValue = (float)DebugFpsHistory[i];
        }
    }

    // Adjust the scale based on the maximum value or target FPS
    float fpsScale;
    if ((float)options->targetFps > maxFpsValue) {
        fpsScale = (float)graphHeight / (float)options->targetFps;
    }
    else {
        fpsScale = (float)graphHeight / maxFpsValue;
    }

    DrawRectangle(graphX, graphY, graphWidth, graphHeight, Fade(GRAY, 0.7));

    // Draw the FPS history graph with color based on target FPS
    for (int i = 1; i < DEBUG_MAX_FPS_HISTORY; i++) {
        int x1 = graphX + i - 1;
        int x2 = graphX + i;
        int y1 = graphY + graphHeight - (DebugFpsHistory[(DebugFpsHistoryIndex + i - 1) % DEBUG_MAX_FPS_HISTORY] * fpsScale);
        int y2 = graphY + graphHeight - (DebugFpsHistory[(DebugFpsHistoryIndex + i) % DEBUG_MAX_FPS_HISTORY] * fpsScale);

        // Calculate the ratio of actual FPS to target FPS
        float fpsRatio = (float)DebugFpsHistory[(DebugFpsHistoryIndex + i) % DEBUG_MAX_FPS_HISTORY] / (float)options->targetFps;

        // Set color based on the ratio to target FPS
        Color lineColor;
        if (fpsRatio >= 0.9f) {
            lineColor = GREEN; // FPS close to or exceeding target
        }
        else if (fpsRatio >= 0.7f) {
            lineColor = YELLOW; // FPS above 70% of target
        }
        else {
            lineColor = RED; // FPS below 70% of target
        }

        DrawLine(x1, y1, x2, y2, lineColor);
    }

    DrawTextEx(meowFont, "FPS", (Vector2) { baseX + BASE_SCREEN_WIDTH - 50, baseY + 5 }, 20, 2, GRAY);
    DrawTextEx(meowFont, TextFormat("%.2f", maxFpsValue > options->targetFps ? maxFpsValue : options->targetFps), (Vector2) { graphX + 10, graphY + 10 }, 15, 2, WHITE);
    DrawTextEx(meowFont, "0", (Vector2) { graphX + 10, graphY + graphHeight - 30 }, 15, 2, WHITE);
}


void DrawFrameTime(Camera2D* camera) {
    int graphWidth = DEBUG_MAX_FPS_HISTORY;
    int graphHeight = 200;
    int graphX = baseX + BASE_SCREEN_WIDTH - 15 - graphWidth;
    int graphY = baseY + 280;

    float targetFrameTime = 1000.0f / options->targetFps;

    // Find the maximum value in the DebugFrameTimeHistory array
    float maxFrameTime = 0.0f;
    for (int i = 0; i < DEBUG_MAX_FPS_HISTORY; i++) {
        if (DebugFrameTimeHistory[i] > maxFrameTime) {
            maxFrameTime = DebugFrameTimeHistory[i];
        }
    }

    // Calculate the expected value based on the target FPS
    float expectedFrameTime = 1000.0f / options->targetFps;

    // Adjust the frameTimeScale based on the maximum value
    float frameTimeScale = (maxFrameTime > 0) ? (float)graphHeight / maxFrameTime : 1.0f;

    DrawRectangle(graphX, graphY, graphWidth, graphHeight, Fade(GRAY, 0.7));

    // Draw the frame time history graph with color based on expected value
    for (int i = 1; i < DEBUG_MAX_FPS_HISTORY; i++) {
        int x1 = graphX + i - 1;
        int x2 = graphX + i;
        int y1 = graphY + graphHeight - (DebugFrameTimeHistory[(DebugFrameTimeHistoryIndex + i - 1) % DEBUG_MAX_FPS_HISTORY] * frameTimeScale);
        int y2 = graphY + graphHeight - (DebugFrameTimeHistory[(DebugFrameTimeHistoryIndex + i) % DEBUG_MAX_FPS_HISTORY] * frameTimeScale);

        // Calculate the ratio of the frame time to the expected frame time
        float ratioToExpected = DebugFrameTimeHistory[(DebugFrameTimeHistoryIndex + i) % DEBUG_MAX_FPS_HISTORY] / expectedFrameTime;

        // Set color based on the ratio to expected value
        Color lineColor;
        if (ratioToExpected <= 1.0f) {
            lineColor = GREEN;
        }
        else if (ratioToExpected <= 1.5f) {
            lineColor = YELLOW;
        }
        else {
            lineColor = RED;
        }

        DrawLine(x1, y1, x2, y2, lineColor);
    }

    DrawTextEx(meowFont, "Frame Time (ms)", (Vector2) { baseX - 130 + BASE_SCREEN_WIDTH - 50, graphY - 25 }, 20, 2, GRAY);
    DrawTextEx(meowFont, TextFormat("%.2f", maxFrameTime > expectedFrameTime ? maxFrameTime : expectedFrameTime), (Vector2) { graphX + 10, graphY + 10 }, 15, 2, WHITE);
    DrawTextEx(meowFont, "0", (Vector2) { graphX + 10, graphY + graphHeight - 30 }, 15, 2, WHITE);
}


void UpdateDebugFpsHistory() {
    DebugFpsHistory[DebugFpsHistoryIndex] = GetFPS();
    DebugFpsHistoryIndex = (DebugFpsHistoryIndex + 1) % DEBUG_MAX_FPS_HISTORY;
}

void UpdateDebugFrameTimeHistory() {
	DebugFrameTimeHistory[DebugFrameTimeHistoryIndex] = GetFrameTime() * 1000;
	DebugFrameTimeHistoryIndex = (DebugFrameTimeHistoryIndex + 1) % DEBUG_MAX_FPS_HISTORY;
}

void DrawDebugOverlay(Camera2D *camera)
{
    Color color = LIME; 
    int fps = GetFPS();

    if ((fps < 30) && (fps >= 15)) color = ORANGE;
    else if (fps < 15) color = RED;

    Vector2 mousePosition = GetMousePosition();
    Vector2 mouseWorldPos = GetScreenToWorld2D(mousePosition, *camera);

    UpdateDebugFpsHistory();
    UpdateDebugFrameTimeHistory();
    
    DrawTextEx(meowFont, TextFormat("%d FPS | Target FPS %d | Window (%dx%d) | Render (%dx%d) | Fullscreen ", fps, options->targetFps, options->resolution.x, options->resolution.y, BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT, options->fullscreen ? "Yes" : "No"), (Vector2) { baseX + 10, baseY + 5 }, 20, 2, color);
    DrawTextEx(meowFont, TextFormat("Cursor %.2f,%.2f (%dx%d) | World %.2f,%.2f (%dx%d) | R Base World %.2f,%.2f", mousePosition.x, mousePosition.y, options->resolution.x, options->resolution.y, mouseWorldPos.x, mouseWorldPos.y, BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT, mouseWorldPos.x - baseX, mouseWorldPos.y - baseY), (Vector2) { baseX + 10, baseY + 25 }, 20, 2, color);
    DrawTextEx(meowFont, TextFormat("Zoom %.2f | In View %s", camera->zoom, IsMousePositionInGameWindow(camera) ? "[Yes]" : "[No]"), (Vector2) { baseX + 10, baseY + 45 }, 20, 2, color);
    DrawFpsGraph(camera);
    DrawFrameTime(camera);
}

/* Definitions of branch customers */

// TO BE DESTROYED
#define PLACEHOLDER_ORDER "PLACEHOLDER_ORDER"
static int placeholder_static = 0;
static int global_score = 0;

void create_customer(Customer *customer, int patience, Order order, int currentTime, int orderEnd) {
	customer->visible = true;
	customer->order = &order;
	customer->currentTime = currentTime;
	customer->orderEnd = orderEnd * patience;
}

void create_order(Order *order, char *first, char *second, char *third, char *fourth) {
	order->first = first;
	order->second = second;
	order->third = third;
	order->fourth = fourth;
}

void distribute_points(Order* order, char* first, char* second, char* third, char* fourth)
{
    if (first)
    {
        global_score += 50;
    }
    if (second)
    {
        global_score += 50;
    }
    if (third)
    {
        global_score += 50;
    }
    if (fourth)
    {
        global_score += 50;
    }
}

void validiator(Order *order, char *first, char *second, char *third, char *fourth)
{
	//if order is valid, call distribute points
	if (strcmp(order->first, first) == 0 && strcmp(order->second, second) == 0 && strcmp(order->third, third) == 0 && strcmp(order->fourth, fourth) == 0)
	{
		distribute_points(order, first, second, third, fourth);
	}
	else
	{
		//To be implemented, waiting for mixture parts.
	}
}

//create customer image at either position 1 2 or 3
void render_customers(Customers *customers)
{
    if(&customers->customer1 != NULL)
        DrawCustomer(&customers->customer1, 0, (Vector2) { baseX, baseY + 100 });
    if (&customers->customer2 != NULL)
        DrawCustomer(&customers->customer2, 1, (Vector2) { baseX + 500, baseY + 100 });
    if (&customers->customer3 != NULL)
        DrawCustomer(&customers->customer3, 2, (Vector2) { baseX + 1100, baseY + 100 });
}

//Yandere dev inspired programming.

void remove_customers(Customer *customer, int position)
{
	customer->visible = false;
}

void update_customer_state(Customer *customer) {
    if (customer->visible == true) {
        if (customer->currentTime < customer->orderEnd) {
            customer->currentTime++;
            if (customer->currentTime > customer->orderEnd / 2) {
                customer->emotion = EMOTION_FRUSTRATED;
            } else if (customer->currentTime > customer->orderEnd / 4) {
                customer->eyesClosed = EMOTION_ANGRY;
            }
        } else {
            remove_customers(customer, 1);
            global_score -= 50;
        }
    }
}

void Tick(Customers *customers) {
    update_customer_state(&customers->customer1);
    update_customer_state(&customers->customer2);
    update_customer_state(&customers->customer3);
}

/* Definitions terminates*/

void PlayHoverSound()
{
    if(options->soundFxEnabled)
	    PlaySound(hover);
}

void PlaySelectSound()
{
    if(options->soundFxEnabled)
        PlaySound(select);
}

void WindowUpdate(Camera2D* camera)
{
    if (IsWindowResized())
    {
        int screenWidth = GetScreenWidth();
        int screenHeight = GetScreenHeight();


        float currentAspectRatio = (float)screenWidth / (float)screenHeight;
        float scale = (currentAspectRatio > targetAspectRatio) ? (float)screenHeight / BASE_SCREEN_HEIGHT : (float)screenWidth / BASE_SCREEN_WIDTH;

        camera->zoom = scale;
        camera->offset.x = screenWidth / 2.0f;
        camera->offset.y = screenHeight / 2.0f;

        options->resolution.x = screenWidth;
        options->resolution.y = screenHeight;
    }

    // Alt - Enter fullscreen
    if (IsKeyDown(KEY_LEFT_ALT) && IsKeyPressed(KEY_ENTER) || IsKeyDown(KEY_RIGHT_ALT) && IsKeyPressed(KEY_ENTER))
    {
        SetRuntimeResolution(camera, BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT);
        ToggleFullscreen();
    }

    if(currentBgm != NULL)
        UpdateMusicStream(*currentBgm);
}

void LoadGlobalAssets()
{
    double startTime = GetTime();
    backgroundTexture = LoadTexture(ASSETS_PATH"image/backgrounds/main.png");
    backgroundOverlayTexture = LoadTexture(ASSETS_PATH"image/backgrounds/main_overlay_1.png");
    backgroundOverlaySidebarTexture = LoadTexture(ASSETS_PATH"image/backgrounds/main_overlay_2.png");
    pawTexture = LoadTexture(ASSETS_PATH"image/elements/paw.png");

    checkbox = LoadTexture(ASSETS_PATH"image/elements/checkbox.png");
    checkboxChecked = LoadTexture(ASSETS_PATH"image/elements/checkbox_checked.png");
    left_arrow = LoadTexture(ASSETS_PATH"image/elements/left_arrow.png");
    right_arrow = LoadTexture(ASSETS_PATH"image/elements/right_arrow.png");

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

    menuFallingItemTextures[0] = LoadTexture(ASSETS_PATH"image/falling_items/cara.png");
    menuFallingItemTextures[1] = LoadTexture(ASSETS_PATH"image/falling_items/cmilk.png");
    menuFallingItemTextures[2] = LoadTexture(ASSETS_PATH"image/falling_items/cocoa.png");
    menuFallingItemTextures[3] = LoadTexture(ASSETS_PATH"image/falling_items/gar.png");
    menuFallingItemTextures[4] = LoadTexture(ASSETS_PATH"image/falling_items/marshmello.png");
    menuFallingItemTextures[5] = LoadTexture(ASSETS_PATH"image/falling_items/matcha.png");
    menuFallingItemTextures[6] = LoadTexture(ASSETS_PATH"image/falling_items/milk.png");
    menuFallingItemTextures[7] = LoadTexture(ASSETS_PATH"image/falling_items/wcream.png");

    for (int i = 0; i < 3; i++)
    {
        customersImageData[i].happy = LoadTexture(TextFormat(ASSETS_PATH"image/sprite/customer_%d/happy.png", i + 1));
		customersImageData[i].happyEyesClosed = LoadTexture(TextFormat(ASSETS_PATH"image/sprite/customer_%d/happy_eyes_closed.png", i + 1));
        customersImageData[i].frustrated = LoadTexture(TextFormat(ASSETS_PATH"image/sprite/customer_%d/frustrated.png", i + 1));
        customersImageData[i].frustratedEyesClosed = LoadTexture(TextFormat(ASSETS_PATH"image/sprite/customer_%d/frustrated_eyes_closed.png", i + 1));
        customersImageData[i].angry = LoadTexture(TextFormat(ASSETS_PATH"image/sprite/customer_%d/angry.png", i + 1));
        customersImageData[i].angryEyesClosed = LoadTexture(TextFormat(ASSETS_PATH"image/sprite/customer_%d/angry_eyes_closed.png", i + 1));
	}

    menuBgm = LoadMusicStream(ASSETS_PATH"audio/bgm/Yojo_Summer_My_Heart.wav");

    menuCustomer1 = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
    menuCustomer2 = createCustomer(EMOTION_HAPPY, 0.4, 5.2, 0.3, true);

    loadDurationTimer = GetTime() - startTime;
    isGlobalAssetsLoadFinished = true;
}

void UnloadGlobalAssets()
{
    UnloadTexture(backgroundTexture);
    UnloadTexture(backgroundOverlayTexture);
    UnloadTexture(backgroundOverlaySidebarTexture);
    UnloadTexture(pawTexture);
    UnloadFont(meowFont);

    UnloadTexture(checkbox);
	UnloadTexture(checkboxChecked);
    UnloadTexture(left_arrow);
    UnloadTexture(right_arrow);

    UnloadSound(hover);
    UnloadSound(select);

    for(int i = 0; i < 8; i++)
		UnloadTexture(menuFallingItemTextures[i]);

    UnloadTexture(logoTexture);
    UnloadTexture(splashBackgroundTexture);
    UnloadTexture(splashOverlayTexture);

    for (int i = 0; i < 3; i++)
    {
        UnloadTexture(customersImageData[i].happy);
		UnloadTexture(customersImageData[i].happyEyesClosed);
		UnloadTexture(customersImageData[i].frustrated);
		UnloadTexture(customersImageData[i].frustratedEyesClosed);
		UnloadTexture(customersImageData[i].angry);
		UnloadTexture(customersImageData[i].angryEyesClosed);
    }

    UnloadMusicStream(menuBgm);
}

void ExitApplication()
{
    UnloadGlobalAssets();
    exit(0);
}

void PlayBgm(Music *bgm)
{
    if (bgm == currentBgm)
    {
        if (isCurrentBgmPaused)
        {
            PlayMusicStream(*bgm);
            bgm->looping = true;
            isCurrentBgmPaused = false;
        }
        return;
    }

    currentBgm = bgm;
	StopMusicStream(*currentBgm);
	PlayMusicStream(*currentBgm);
    bgm->looping = true;
    isCurrentBgmPaused = false;
}

void PlayBgmIfStopped(Music* bgm)
{
    if (bgm == currentBgm)
    {
        if (isCurrentBgmPaused)
        {
            PlayMusicStream(*bgm);
            bgm->looping = true;
            isCurrentBgmPaused = false;
        }
        return;
    }

    currentBgm = bgm;
    PlayMusicStream(*currentBgm);
    bgm->looping = true;
    isCurrentBgmPaused = false;
}

void PauseBgm(Music *bgm)
{
	if (bgm != currentBgm) return;
	if (isCurrentBgmPaused) return;

	PauseMusicStream(*bgm);
	isCurrentBgmPaused = true;
}

void StopBgm(Music *bgm)
{
	StopMusicStream(*bgm);
    isCurrentBgmPaused = false;
    currentBgm = NULL;
}

void OptionsUpdate(Camera2D* camera)
{
    Rectangle difficultyRect = { baseX + 780, baseY + 595, 340, 70 };
    Rectangle difficultyDecrementRect = { difficultyRect.x, difficultyRect.y, 60, 70 };
    Rectangle difficultyIncrementRect = { difficultyRect.x + 280, difficultyRect.y, 60, 70 };
    
    Rectangle resolutionRect = { baseX + 780, baseY + 675, 340, 70 };
    Rectangle resolutionDecrementRect = { resolutionRect.x, resolutionRect.y, 60, 70 };
    Rectangle resolutionIncrementRect = { resolutionRect.x + 280, resolutionRect.y, 60, 70 };

    Rectangle fpsRect = { baseX + 1200, baseY + 595, 340, 70 };
    Rectangle fpsDecrementRect = { fpsRect.x, fpsRect.y, 60, 70 };
    Rectangle fpsIncrementRect = { fpsRect.x + 280, fpsRect.y, 60, 70 };

    Rectangle musicRect = { baseX + 100, baseY + 595, 200, 70 };
    Rectangle soundFxRect = { baseX + 100, baseY + 675, 250, 70 };

    Rectangle fullscreenRect = { baseX + 400, baseY + 595, 300, 70 };
    Rectangle debugRect = { baseX + 400, baseY + 675, 200, 70 };

    Rectangle backRect = { baseX + 100, baseY + 430, 200, 70 };

    bool firstRender = true;
    double lastFrameTime = GetTime();

    bool isHovering = false;
    int currentHoveredButton = NULL;

    PlayBgmIfStopped(&menuBgm);

    while (!WindowShouldClose())
    {
        // Calculate delta time
        double deltaTime = GetTime() - lastFrameTime;
        lastFrameTime = GetTime();

        WindowUpdate(camera);

        Vector2 mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), *camera);

        bool isDifficultyIncrementHovered = CheckCollisionPointRec(mouseWorldPos, difficultyIncrementRect);
        bool isDifficultyDecrementHovered = CheckCollisionPointRec(mouseWorldPos, difficultyDecrementRect);
        
        bool isResolutionIncrementHovered = CheckCollisionPointRec(mouseWorldPos, resolutionIncrementRect);
        bool isResolutionDecrementHovered = CheckCollisionPointRec(mouseWorldPos, resolutionDecrementRect);

        bool isFpsIncrementHovered = CheckCollisionPointRec(mouseWorldPos, fpsIncrementRect);
        bool isFpsDecrementHovered = CheckCollisionPointRec(mouseWorldPos, fpsDecrementRect);
        
        bool isMusicHovered = CheckCollisionPointRec(mouseWorldPos, musicRect);
        bool isSoundFxHovered = CheckCollisionPointRec(mouseWorldPos, soundFxRect);
        bool isFullscreenHovered = CheckCollisionPointRec(mouseWorldPos, fullscreenRect);
        bool isDebugHovered = CheckCollisionPointRec(mouseWorldPos, debugRect);

        bool isBackHovered = CheckCollisionPointRec(mouseWorldPos, backRect);

        // Handle user input
        if (!firstRender && IsMouseButtonPressed(MOUSE_LEFT_BUTTON)) {
            if (isDifficultyIncrementHovered) {
                if (options->difficulty == EASY) {
					options->difficulty = MEDIUM;
				}
				else if (options->difficulty == MEDIUM) {
					options->difficulty = HARD;
				}
                PlaySelectSound();
            }
            else if (isDifficultyDecrementHovered) {
				if (options->difficulty == HARD) {
                    options->difficulty = MEDIUM;
				}
                else if (options->difficulty == MEDIUM) {
                    options->difficulty = EASY;
				}
                PlaySelectSound();
			}
            else if (isResolutionIncrementHovered) {
                // 720p -> 1080p
                if (options->resolution.x == 1280) {
                    options->resolution.x = 1920;
                    options->resolution.y = 1080;
                }
                // Custom resize resolution
				else
				{
                    // If current resolution is less than 720p, set it to 720p
                    if (options->resolution.x < 1280 || options->resolution.y < 720) {
						options->resolution.x = 1280;
						options->resolution.y = 720;
					}
				}
                SetRuntimeResolution(camera, options->resolution.x, options->resolution.y);
                PlaySelectSound();
            }
            else if (isResolutionDecrementHovered) {
                // 1080p -> 720p
                if (options->resolution.x == 1920) {
					options->resolution.x = 1280;
					options->resolution.y = 720;
				}
                // Custom resize resolution
                else {
                    // If current resolution is more than 1080p, set it to 1080p
                    if (options->resolution.x > 1920 || options->resolution.y > 1080) {
                        options->resolution.x = 1920;
                        options->resolution.y = 1080;
                    }
                }
                SetRuntimeResolution(camera, options->resolution.x, options->resolution.y);
                PlaySelectSound();
            }
            else if (isFpsIncrementHovered) {
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

                SetTargetFPS(options->targetFps);
                PlaySelectSound();
            }
            else if (isFpsDecrementHovered) {
                // Change target FPS 30, 60, 120, 144, 240, Basically Unlimited (1000)
                if (options->targetFps == 60) {
                    options->targetFps = 30;
                }
                else if (options->targetFps == 120) {
                    options->targetFps = 60;
                }
                else if (options->targetFps == 144) {
                    options->targetFps = 120;
                }
                else if (options->targetFps == 240) {
                    options->targetFps = 144;
                }
                else if (options->targetFps == 1000) {
					options->targetFps = 240;
				}

                SetTargetFPS(options->targetFps);
                PlaySelectSound();
            }
            else if (isFullscreenHovered) {
                // Toggle fullscreen
                options->fullscreen = !options->fullscreen;
                SetRuntimeResolution(camera, options->resolution.x, options->resolution.y);
                ToggleFullscreen();
                PlaySelectSound();
            }
            else if (isDebugHovered) {
				// Toggle debug
				options->showDebug = !options->showDebug;
                PlaySelectSound();
			}
			else if (isBackHovered) {
				// Go back to main menu
				MainMenuUpdate(camera, false);
                PlaySelectSound();
				break;
			}
		    else if (isMusicHovered) {
				// Toggle music
				options->musicEnabled = !options->musicEnabled;
                PlaySelectSound();
                if (options->musicEnabled)
                    PlayBgm(&menuBgm);
				else
                    PauseBgm(&menuBgm);
			}
			else if (isSoundFxHovered) {
				// Toggle sound fx
				options->soundFxEnabled = !options->soundFxEnabled;
                PlaySelectSound();
			}
        }

        // Play sound when hovering over a button, but only once

        if (isDifficultyIncrementHovered)
        {
            if (!isHovering || currentHoveredButton != 0)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 0;
        }
        else if (isDifficultyDecrementHovered)
        {
            if (!isHovering || currentHoveredButton != 1)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 1;
        }
        else if (isResolutionIncrementHovered)
        {
            if (!isHovering || currentHoveredButton != 2)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 2;
        }
        else if (isResolutionDecrementHovered)
        {
            if (!isHovering || currentHoveredButton != 3)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 3;
        }
        else if (isFpsIncrementHovered)
        {
            if (!isHovering || currentHoveredButton != 4)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 4;
        }
        else if (isFpsDecrementHovered)
        {
            if (!isHovering || currentHoveredButton != 5)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 5;
        }
        else if (isFullscreenHovered)
        {
            if (!isHovering || currentHoveredButton != 6)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 6;
        }
        else if (isDebugHovered)
        {
            if (!isHovering || currentHoveredButton != 7)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 7;
        }
        else if (isBackHovered)
        {
            if (!isHovering || currentHoveredButton != 8)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 8;
        } 
        else if (isMusicHovered)
        {
            if (!isHovering || currentHoveredButton != 9)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 9;
        }
        else if (isSoundFxHovered)
        {
            if (!isHovering || currentHoveredButton != 10)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 10;
        }
        else
        {
            currentHoveredButton = NULL;
            isHovering = false;
        }

        if (firstRender)
            firstRender = false;

        // Draw

        BeginDrawing();
        ClearBackground(BLACK);


        BeginMode2D(*camera);

        int imageWidth = backgroundTexture.width;
        int imageHeight = backgroundTexture.height;

        float scaleX = (float)BASE_SCREEN_WIDTH / imageWidth;
        float scaleY = (float)BASE_SCREEN_HEIGHT / imageHeight;

        // Draw the background with the scaled dimensions
        DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw falling items behind the menu
        DrawMenuFallingItems(deltaTime, true);

        DrawCustomerInMenu(deltaTime);

        DrawTextureEx(backgroundOverlayTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw falling items in front of the menu
        DrawMenuFallingItems(deltaTime, false);

        // Music
        DrawTextureEx(options->musicEnabled ? checkboxChecked : checkbox, (Vector2) { musicRect.x + 10, musicRect.y + 10 }, 0.0f, 1.0f / 6.0f, WHITE);
		DrawTextEx(meowFont, "Music", (Vector2) { musicRect.x + 80, musicRect.y + 22 }, 32, 2, MAIN_BROWN);

        // Sound FX
        DrawTextureEx(options->soundFxEnabled ? checkboxChecked : checkbox, (Vector2) { soundFxRect.x + 10, soundFxRect.y + 10 }, 0.0f, 1.0f / 6.0f, WHITE);
        DrawTextEx(meowFont, "Sound FX", (Vector2) { soundFxRect.x + 80, soundFxRect.y + 22 }, 32, 2, MAIN_BROWN);

        // Fullscreen
        DrawTextureEx(options->fullscreen ? checkboxChecked : checkbox, (Vector2) { fullscreenRect.x + 10, fullscreenRect.y + 10 }, 0.0f, 1.0f / 6.0f, WHITE);
        DrawTextEx(meowFont, "Fullscreen", (Vector2) { fullscreenRect.x + 80, fullscreenRect.y + 22 }, 32, 2, MAIN_BROWN);

        // Debug
        DrawTextureEx(options->showDebug ? checkboxChecked : checkbox, (Vector2) { debugRect.x + 10, debugRect.y + 10 }, 0.0f, 1.0f / 6.0f, WHITE);
		DrawTextEx(meowFont, "Debug", (Vector2) { debugRect.x + 80, debugRect.y + 22 }, 32, 2, MAIN_BROWN);

        // Difficulty
        DrawTextureEx(left_arrow, (Vector2) { difficultyDecrementRect.x , difficultyDecrementRect.y}, 0.0f, 1.0f / 5.0f, WHITE);
        DrawTextureEx(right_arrow, (Vector2) { difficultyIncrementRect.x, difficultyIncrementRect.y }, 0.0f, 1.0f / 5.0f, WHITE);
        DrawTextEx(meowFont, "Difficulty", (Vector2) { difficultyRect.x + 80, difficultyRect.y + 10 }, 32, 2, MAIN_BROWN);
        DrawTextEx(meowFont, StringFromDifficultyEnum(options->difficulty), (Vector2) { difficultyRect.x + 80, difficultyRect.y + 42 }, 32, 2, MAIN_BROWN);

        // Resolution
        DrawTextureEx(left_arrow, (Vector2) { resolutionDecrementRect.x, resolutionDecrementRect.y }, 0.0f, 1.0f / 5.0f, WHITE);
        DrawTextureEx(right_arrow, (Vector2) { resolutionIncrementRect.x, resolutionDecrementRect.y }, 0.0f, 1.0f / 5.0f, WHITE);
        DrawTextEx(meowFont, "Resolution", (Vector2) { resolutionRect.x + 80, resolutionRect.y + 10 }, 32, 2, MAIN_BROWN);
        DrawTextEx(meowFont, TextFormat("%dx%d", options->resolution.x, options->resolution.y), (Vector2) { resolutionRect.x + 80, resolutionRect.y + 42 }, 32, 2, MAIN_BROWN);

        // FPS
        DrawTextureEx(left_arrow, (Vector2) { fpsDecrementRect.x, fpsDecrementRect.y }, 0.0f, 1.0f / 5.0f, WHITE);
        DrawTextureEx(right_arrow, (Vector2) { fpsIncrementRect.x, fpsDecrementRect.y }, 0.0f, 1.0f / 5.0f, WHITE);
		DrawTextEx(meowFont, "Target FPS", (Vector2) { fpsRect.x + 80, fpsRect.y + 10 }, 32, 2, MAIN_BROWN);
        DrawTextEx(meowFont, TextFormat("%d FPS", options->targetFps), (Vector2) { fpsRect.x + 80, fpsRect.y + 42 }, 32, 2, MAIN_BROWN);


        // Back
        DrawRectangleRec(backRect, isBackHovered ? MAIN_ORANGE : MAIN_BROWN);
        DrawTextEx(meowFont, "Back", (Vector2) { backRect.x + 40, backRect.y + 22 }, 32, 2, WHITE);

        // Draw debug
        if (options->showDebug)
        {
            DrawRectangleLinesEx(difficultyRect, 1, RED);
            DrawRectangleLinesEx(difficultyDecrementRect, 1, RED);
            DrawRectangleLinesEx(difficultyIncrementRect, 1, RED);
            DrawRectangleLinesEx(resolutionRect, 1, RED);
            DrawRectangleLinesEx(resolutionDecrementRect, 1, RED);
            DrawRectangleLinesEx(resolutionIncrementRect, 1, RED);
            DrawRectangleLinesEx(fpsRect, 1, RED);
            DrawRectangleLinesEx(fpsDecrementRect, 1, RED);
            DrawRectangleLinesEx(fpsIncrementRect, 1, RED);

            DrawRectangleLinesEx(musicRect, 1, RED);
            DrawRectangleLinesEx(soundFxRect, 1, RED);
            DrawRectangleLinesEx(fullscreenRect, 1, RED);
            DrawRectangleLinesEx(debugRect, 1, RED);
        }

        DrawOuterWorld();

        if (options->showDebug)
            DrawDebugOverlay(camera);

        EndMode2D();
        EndDrawing();
    }

    UnloadTexture(backgroundTexture);
    CloseWindow();
}

void GameUpdate(Camera2D *camera)
{

    double lastFrameTime = GetTime();
    float circleRadius = 30.0f;
    Vector2 circlePosition = { 100, 50 };
    bool isDragging = false;

    while (!WindowShouldClose())
    {
        // Calculate delta time
        double deltaTime = GetTime() - lastFrameTime;
        lastFrameTime = GetTime();

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

        float scaleX = (float)BASE_SCREEN_WIDTH / imageWidth;
        float scaleY = (float)BASE_SCREEN_HEIGHT / imageHeight;

        // Draw the background with the scaled dimensions
        DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

		/* Customers */

		
		Customer customer1 = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
		Order order1;
		Customer customer2 = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
		Order order2;
		Customer customer3 = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
		Order order3;
		Customers customers;
        customers.customer1 = customer1;
        customers.customer2 = customer2;
        customers.customer3 = customer3;

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

        if(&customers.customer1 != NULL)
            UpdateMenuCustomerBlink(&customers.customer1, deltaTime);
        if (&customers.customer2 != NULL)
            UpdateMenuCustomerBlink(&customers.customer2, deltaTime);
        if (&customers.customer3 != NULL)
            UpdateMenuCustomerBlink(&customers.customer3, deltaTime);


        // Draw circle
        DrawCircleV(circlePosition, circleRadius, BLUE);

		char *scoreText = TextFormat("Score: %d", global_score);
        DrawTextEx(GetFontDefault(), scoreText, (Vector2) { baseX + 20, baseY + 20 }, 20, 2, WHITE);

        DrawOuterWorld();

        if (options->showDebug)
            DrawDebugOverlay(camera);

        EndMode2D();
        EndDrawing();
    }

    UnloadTexture(backgroundTexture);
    CloseWindow();

}

void MainMenuUpdate(Camera2D* camera, bool playFade)
{
    float fadeOutDuration = 1.0f;
    double currentTime = 0;
    double lastFrameTime = GetTime();

    int splashBackgroundImageWidth = splashBackgroundTexture.width;
    int splashBackgroundImageHeight = splashBackgroundTexture.height;

    float splashBackgroundScaleX = (float)BASE_SCREEN_WIDTH / splashBackgroundImageWidth;
    float splashBackgroundScaleY = (float)BASE_SCREEN_HEIGHT / splashBackgroundImageHeight;

    float transitionOffset = 0;

    bool isFadeOutDone = false;
    bool isTransitioningIn = !playFade;
    bool isTransitioningOut = false;

    if(isTransitioningIn)
        transitionOffset = BASE_SCREEN_WIDTH / 2;

    PlayBgmIfStopped(&menuBgm);

    if(playFade)
    {
        for (int i = 0; i < 20; i++) {
            menuFallingItems[i].position = (Vector2){ GetRandomDoubleValue(baseX, baseX + BASE_SCREEN_WIDTH - 20), baseY - GetRandomDoubleValue(200, 1000) };
            menuFallingItems[i].textureIndex = GetRandomValue(0, menuFallingItemsNumber - 1);

            // Random rotation and falling speed
            menuFallingItems[i].rotation = GetRandomDoubleValue(-360, 360);
            menuFallingItems[i].fallingSpeed = GetRandomDoubleValue(1, 3);
            menuFallingItems[i].fallingSpeed *= 100;

            // Rotation speed is between -3 and 3, but should not execeed falling speed and should not be 0
            menuFallingItems[i].rotationSpeed = GetRandomValue(-3, 3);
            if (abs(menuFallingItems[i].rotationSpeed) > menuFallingItems[i].fallingSpeed)
                menuFallingItems[i].rotationSpeed = menuFallingItems[i].fallingSpeed;
            if (menuFallingItems[i].rotationSpeed == 0)
                menuFallingItems[i].rotationSpeed = 1;

            menuFallingItems[i].rotationSpeed *= 100;

        }
    }

    int currentHoveredButton = NULL;
    void (*transitionCallback)(Camera2D * camera) = NULL;

    bool isHovering = false;

    while (!WindowShouldClose())
    {
        // Calculate delta time
        double deltaTime = GetTime() - lastFrameTime;
        lastFrameTime = GetTime();

        if (!isFadeOutDone)
            currentTime += GetFrameTime();

        WindowUpdate(camera);

        // Button positions and dimensions
        Rectangle startButtonRect = { baseX + 50 - transitionOffset, baseY + 600 + 60, 400, 100 };
        Rectangle optionsButtonRect = { baseX + 50 - transitionOffset, baseY + 600 + 160, 400, 100 };
        Rectangle exitButtonRect = { baseX + 50 - transitionOffset, baseY + 600 + 350, 400, 100 };

        // Convert mouse position from screen space to world space
        Vector2 mouseWorldPos = GetScreenToWorld2D(GetMousePosition(), *camera);

        bool isStartButtonHovered = CheckCollisionPointRec(mouseWorldPos, startButtonRect);
        bool isOptionsButtonHovered = CheckCollisionPointRec(mouseWorldPos, optionsButtonRect);
        bool isExitButtonHovered = CheckCollisionPointRec(mouseWorldPos, exitButtonRect);

        // Check for button clicks
        if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON) && !isTransitioningOut && !isTransitioningIn)
        {
            if (isStartButtonHovered)
            {
                PlaySelectSound();
                transitionCallback = GameUpdate;
                isTransitioningOut = true;
            }
            else if (isOptionsButtonHovered)
            {
                PlaySelectSound();
                transitionCallback = OptionsUpdate;
                isTransitioningOut = true;
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
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 0;
        }
        else if (isOptionsButtonHovered)
        {
            if (!isHovering || currentHoveredButton != 1)
            {
                PlayHoverSound();
                isHovering = true;
            }
            currentHoveredButton = 1;
        }
        else if (isExitButtonHovered)
        {
            if (!isHovering || currentHoveredButton != 2)
            {
                PlayHoverSound();
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

        float scaleX = (float)BASE_SCREEN_WIDTH / imageWidth;
        float scaleY = (float)BASE_SCREEN_HEIGHT / imageHeight;

        int imageLogoWidth = logoTexture.width;
        int imageLogoHeight = logoTexture.height;

        float scaleLogoX = (float)BASE_SCREEN_WIDTH / imageLogoWidth / 4;
        float scaleLogoY = (float)BASE_SCREEN_HEIGHT / imageLogoHeight / 4;

        // Draw the background with the scaled dimensions
        DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw falling items behind the menu
        DrawMenuFallingItems(deltaTime, true);

        // Draw customer images
        DrawCustomerInMenu(deltaTime);

        DrawTextureEx(backgroundOverlayTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw falling items in front of the menu
        DrawMenuFallingItems(deltaTime, false);

        // If transitioning out, move the background to the left
        if (isTransitioningOut)
        {
            float pixelsToMove = 900.0f;
            float durationInSeconds = 0.6f;
            float transitionSpeed = pixelsToMove / durationInSeconds;

            transitionOffset += transitionSpeed * deltaTime;

            if (transitionOffset >= BASE_SCREEN_WIDTH / 2)
            {
                transitionOffset = 0;
                isTransitioningOut = false;
                transitionCallback(camera);
                break;
            }
        }

        // If transitioning in, move the background to the right
        if (isTransitioningIn)
        {
            float pixelsToMove = 900.0f;
            float durationInSeconds = 0.6f;
            float transitionSpeed = pixelsToMove / durationInSeconds;

            transitionOffset -= transitionSpeed * deltaTime;

            if (transitionOffset <= 0)
            {
                transitionOffset = 0;
                isTransitioningIn = false;
            }
        }


        // Left sidebar white 
        DrawTextureEx(backgroundOverlaySidebarTexture, (Vector2) { baseX - transitionOffset, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Logo
        DrawTextureEx(logoTexture, (Vector2) { baseX - transitionOffset, baseY - 50 }, 0.0f, fmax(scaleLogoX, scaleLogoY), WHITE);

        // Draw button labels
        DrawTextEx(meowFont, "Start Game", (Vector2) { (int)(startButtonRect.x + 40), (int)(startButtonRect.y + 15) }, 60, 2, isStartButtonHovered ? MAIN_ORANGE : MAIN_BROWN);
        DrawTextEx(meowFont, "Settings", (Vector2) { (int)(optionsButtonRect.x + 40), (int)(optionsButtonRect.y + 15) }, 60, 2, isOptionsButtonHovered ? MAIN_ORANGE : MAIN_BROWN);
        DrawTextEx(meowFont, "Exit", (Vector2) { (int)(exitButtonRect.x + 40), (int)(exitButtonRect.y + 15) }, 60, 2, isExitButtonHovered ? MAIN_ORANGE : MAIN_BROWN);

        // Draw debug
        if (options->showDebug)
        {
            DrawRectangleLinesEx(startButtonRect, 1, RED);
            DrawRectangleLinesEx(optionsButtonRect, 1, RED);
            DrawRectangleLinesEx(exitButtonRect, 1, RED);
        }

        DrawOuterWorld();

        // Calculate alpha based on the current time
        if (playFade)
        {
            float alpha = (float)(255.0 * (1.0 - fmin(currentTime / fadeOutDuration, 1.0)));
            if (!isFadeOutDone && alpha != 0)
                DrawTextureEx(splashBackgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(splashBackgroundScaleX, splashBackgroundScaleY), (Color) { 255, 255, 255, alpha });
            else
                isFadeOutDone = true;
        }


        if(options->showDebug)
            DrawDebugOverlay(camera);

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
    double splashDuration = 0;
    const double fadeInDuration = 0;
    const double stayDuration = 0;
    const double fadeOutDuration = 0;
    const double afterEnd = 0;

    LoadGlobalAssets();
    MainMenuUpdate(camera, true);
#else
    const double beforeStart = 1.0;
    double splashDuration = 8.0;
    const double fadeInDuration = 2.0;
    const double stayDuration = 3.0;
    const double fadeOutDuration = 2.0;
    const double afterEnd = 2.0;
#endif

    double startTime = GetTime();
    double currentTime = 0;

    int imageWidth = splashBackgroundTexture.width;
    int imageHeight = splashBackgroundTexture.height;

    float scaleX = (float)BASE_SCREEN_WIDTH / imageWidth;
    float scaleY = (float)BASE_SCREEN_HEIGHT / imageHeight;

    BeginDrawing();
    BeginMode2D(*camera);
    ClearBackground(RAYWHITE);

    if (options->showDebug)
        DrawDebugOverlay(camera);

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
        DrawRectangle(baseX, baseY, BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT, (Color) { 255, 255, 255, alpha });

        if (options->showDebug)
            DrawDebugOverlay(camera);

        EndMode2D();
        EndDrawing();
    }

    const Sound systemLoad = LoadSound(ASSETS_PATH"audio/Meow1.mp3");
    PlaySound(systemLoad);

    bool doLoadGlobalAssets = true;

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
            if(doLoadGlobalAssets)
			{
				LoadGlobalAssets();
				doLoadGlobalAssets = false;
			}
        }
        else {
            // Fading out
            alpha = (int)(255.0 * (1.0 - fmin((currentTime - fadeInDuration - stayDuration) / fadeOutDuration, 1.0)));
        }

        // Extends splash screen duration if loading takes too long
        if (currentTime > fadeInDuration + stayDuration && doLoadGlobalAssets)
		{
			splashDuration += 0.1;
		}

        BeginDrawing();
        BeginMode2D(*camera);
        ClearBackground(RAYWHITE);
        DrawTextureEx(splashBackgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);
        DrawTextureEx(splashOverlayTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), (Color) { 255, 255, 255, alpha });
        
        if (options->showDebug)
            DrawDebugOverlay(camera);

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
    SetConfigFlags(FLAG_MSAA_4X_HINT);

    InitWindow(BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT, "SuperMeowMeow");
    InitAudioDevice();
    // Center of screen
    SetWindowPosition(200, 200);

    Camera2D camera = { 0 };
    camera.target = (Vector2){ 0.0f, 0.0f };
    camera.offset = (Vector2){ BASE_SCREEN_WIDTH / 2.0f, BASE_SCREEN_HEIGHT / 2.0f };
    camera.rotation = 0.0f;
    camera.zoom = 1.0f;

    GameOptions _options;

    _options.difficulty = EASY;
    _options.resolution = (Resolution){ 1280, 720 };
    _options.targetFps = 120;
    _options.fullscreen = false;  // Default to windowed mode
    _options.showDebug = DEBUG_SHOW;
    _options.musicEnabled = true;
    _options.soundFxEnabled = true;

    options = &_options;


    SetTargetFPS(options->targetFps);
    SetRuntimeResolution(&camera, options->resolution.x, options->resolution.y);


    meowFont = LoadFontEx(ASSETS_PATH"font/SantJoanDespi-Regular.otf", 256, 0, 250);
    SetTextureFilter(meowFont.texture, TEXTURE_FILTER_ANISOTROPIC_4X);

    logoTexture = LoadTexture(ASSETS_PATH"image/elements/studio_logo.png");
    splashBackgroundTexture = LoadTexture(ASSETS_PATH"image/backgrounds/splash.png");
    splashOverlayTexture = LoadTexture(ASSETS_PATH"image/backgrounds/splash_overlay.png");

    SplashUpdate(&camera);
    UnloadGlobalAssets();
    return 0;
}
