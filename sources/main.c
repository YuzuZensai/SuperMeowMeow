#include "raylib.h"
#include "raymath.h"
#include <stdlib.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <time.h> 
#include <string.h>

// Render resolution
#define BASE_SCREEN_WIDTH 1920
#define BASE_SCREEN_HEIGHT 1080

// Debug flags
#define DEBUG_SHOW true
#define DEBUG_FASTLOAD true
#define DEBUG_MAX_FPS_HISTORY 500
#define DEBUG_MAX_LOGS_HISTORY 25

// Base values
const float baseX = -(BASE_SCREEN_WIDTH / 2);
const float baseY = -(BASE_SCREEN_HEIGHT / 2);
const float targetAspectRatio = (float)BASE_SCREEN_WIDTH / (float)BASE_SCREEN_HEIGHT;
const int targetFps = 300;
const float bgmVolume = 0.1f;

// Debug FPS history
int DebugFpsHistory[DEBUG_MAX_FPS_HISTORY];
int DebugFpsHistoryIndex = 0;

// Debug frame time history
int DebugFrameTimeHistory[DEBUG_MAX_FPS_HISTORY];
int DebugFrameTimeHistoryIndex = 0;

// Debug logs history
typedef struct DebugLogEntry {
	int type;
	char* text;
} DebugLogEntry;

DebugLogEntry DebugLogs[DEBUG_MAX_LOGS_HISTORY];
int DebugLogsIndex = 0;

// Debug tool toggles states
typedef struct DebugToolToggles {
	bool showDebugLogs;
	bool showStats;
	bool showGraph;
    bool showObjects;
} DebugToolToggles;

DebugToolToggles debugToolToggles = { false, true, false, false };

void LogDebug(const char* text, ...);
void Log(int msgType, const char* text, ...);

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
Sound selectFx;
Sound hover;

// BGMs
Music menuBgm;

// Menu falling items
Texture2D menuFallingItemTextures[8];

// Ingredients
Texture2D teaPowderTexture;
Texture2D cocoaPowderTexture;
Texture2D caramelSauceTexture;
Texture2D chocolateSauceTexture;
Texture2D condensedMilkTexture;
Texture2D normalMilkTexture;
Texture2D marshMellowTexture;
Texture2D whippedCreamTexture;
Texture2D hotWaterTexture;
Texture2D greenChonTexture;
Texture2D cocoaChonTexture;

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

// Ingredient
typedef enum IngredientType {
    NONE,
    GREEN_TEA,
    COCOA,
    CONDENSED_MILK,
    MILK,
    MARSHMELLOW,
    WHIPPED_CREAM,
    CARAMEL,
    CHOCOLATE
};

typedef struct {
    Texture2D texture;
    bool canChangeCupTexture;
    Vector2 position;
    Vector2 originalPosition;
    Rectangle frameRectangle;
    int totalFrames;
    int currentFrame; // not use right now but later
} Ingredient;

// Ingredients
Ingredient teaPowder, cocoaPowder, normalMilk, condensedMilk, marshMellow, whippedCream, caramelSauce, chocolateSauce, hotWater;
Ingredient greenChon, cocoaChon;

// Cup
typedef struct {
    Texture2D texture;
    Vector2 position;
    Vector2 originalPosition;
    Rectangle frameRectangle;
    // Add properties to represent cup state
    enum IngredientType powderType;
    bool hasWater;
    enum IngredientType creamerType;
    enum IngredientType toppingType;
    enum IngredientType sauceType;
    bool active;
} Cup;

// Drop area
typedef struct {
    /* data */
    Texture2D texture;
    Vector2 position;
} DropArea;

DropArea plate;

// Original position
const Vector2 oricupPosition = { 351,109 };
const Vector2 oriwaterPosition = { 679, 243 };

const Vector2 oricaramelPosition = { -770,108 };
const Vector2 orichocolatePosition = { -904,138 };
const Vector2 oriteapowderPosition = { -421,145 };
const Vector2 oricocoapowderPosition = { -564,177 };
const Vector2 oriplatePosition = { -175,300 };
const Vector2 oriplateCupPosition = { -28, 300 };
const Vector2 oricondensedmilkPosition = { 283,316 };
const Vector2 orimilkPosition = { 160,342 };
const Vector2 orimarshmellowPosition = { -394,424 };
const Vector2 oriwhippedPosition = { -677,391 };
const Vector2 oricupsPostion = { 432,97 };
const Vector2 hiddenPosition = { -3000, -3000 };

Texture2D* DragAndDropCup(Cup* cup, const DropArea* dropArea, Camera2D* camera) {
    static bool isObjectBeingDragged = false;
    static Texture2D* current_dragging = NULL;
    static float offsetX = 0;
    static float offsetY = 0;

    Rectangle objectBounds = { cup->position.x, cup->position.y, (float)cup->frameRectangle.width, (float)cup->frameRectangle.height };
    Rectangle dropBounds = { dropArea->position.x, dropArea->position.y, (float)dropArea->texture.width, (float)dropArea->texture.height };

    if (IsMouseButtonDown(MOUSE_LEFT_BUTTON)) {
        Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
        if (cup->active && CheckCollisionPointRec(mousePos, objectBounds) && (current_dragging == NULL || current_dragging == &cup->texture)) {
            isObjectBeingDragged = true;
            offsetX = cup->frameRectangle.width / 2;
            offsetY = cup->frameRectangle.height / 2;
            float mouseX = mousePos.x;
            float mouseY = mousePos.y;

            cup->position.x = mouseX - offsetX;
            cup->position.y = mouseY - offsetY;
            current_dragging = &cup->texture;
            return &cup->texture;
        }
        // If being drag from cups, then change the cup position to the cursor
        else if (!cup->active && CheckCollisionPointRec(mousePos, (Rectangle) { oricupsPostion.x, oricupsPostion.y, cup->texture.width, cup->texture.height })) {
			// Reset cup state            
            isObjectBeingDragged = true;
			offsetX = cup->texture.width / 2;
			offsetY = cup->texture.height / 2;
			float mouseX = mousePos.x;
			float mouseY = mousePos.y;

			cup->position.x = mouseX - offsetX;
			cup->position.y = mouseY - offsetY;
            cup->texture = LoadTexture(ASSETS_PATH"combination/EMPTY.png");
			current_dragging = &cup->texture;
            cup->powderType = NONE;
            cup->creamerType = NONE;
            cup->toppingType = NONE;
            cup->sauceType = NONE;
            cup->hasWater = false;
            cup->active = true;
			return &cup->texture;
		}

    }

    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON)) {
        isObjectBeingDragged = false;
        current_dragging = NULL;

        if (CheckCollisionRecs(objectBounds, dropBounds)) {
            // center of cup to center of drop area
            int offset_x = 10;
            int offset_y = -40;
            
            cup->position.x = dropArea->position.x + offset_x + dropArea->texture.width / 2 - cup->frameRectangle.width / 2;
            cup->position.y = dropArea->position.y + offset_y + dropArea->texture.height / 2 - cup->frameRectangle.height / 2;
        }
        else {
            cup->position.x = cup->originalPosition.x;
            cup->position.y = cup->originalPosition.y;
        }
    }

    // Apply drag-and-drop with time-dependent positioning
    if (isObjectBeingDragged) {
        Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
        cup->position.x = mousePos.x - offsetX;
        cup->position.y = mousePos.y - offsetY;
    }

    if(current_dragging)
        return current_dragging;
    else
        return NULL;

}

void UpdateCupImage(Cup* cup, Ingredient* ingredient);

void UpdateCupImage(Cup* cup, Ingredient* ingredient) {
    // Check what type of ingredient it is and update the cup accordingly
    // if (ingredient == &teaPowder) {
    //     cup->hasPowder = true;
    //     cup->texture = LoadTexture(ASSETS_PATH"/combination/milktea.png"); // Change to the tea cup texture
    // } else if (ingredient == &cocoaPowder) {
    //     cup->hasPowder = true;
    //     cup->texture = LoadTexture(ASSETS_PATH"/combination/milkcocoa.png"); // Change to the cocoa cup texture
    // }

    // this is a naming standard for combination
    // {POWDER}{CREAMER}{TOPPING}{SAUCE}.png

    // POWDER:
    // -Cocoa Powder: CP
    // -Green Tea Powder: GP

    // WATER:
    // -Yes: Y
    // -No: N

    // CREAMER:
    // -Condensed Milk: CM
    // -Milk: MI

    // TOPPING:
    // -Marshmallow: MA
    // -Whipped Cream: WC

    // SAUCE:
    // -Caramel: CA
    // -Chocolate: CH

    LogDebug("update CUP IMAGE \n");
    char filename[100];

    // Initialize filename to empty string
    strcpy(filename, "");

    switch (cup->powderType)
    {
    case GREEN_TEA:
        // cup->texture = LoadTexture(ASSETS_PATH"/combination/milktea.png"); // Change to the tea cup texture
        strcat(filename, "GP");
        break;
    case COCOA:
        // cup->texture = LoadTexture(ASSETS_PATH"/combination/milkcocoa.png"); // Change to the cocoa cup texture
        strcat(filename, "CP");
        break;
    default:
        break;
    }

    if (cup->powderType != NONE) {
        switch (cup->hasWater)
        {
        case true:
            strcat(filename, "Y");
            break;
        case false:
            strcat(filename, "N");
            break;
        default:
            break;
        }
    }
    if (cup->hasWater == true) {
        switch (cup->creamerType)
        {
        case CONDENSED_MILK:
            strcat(filename, "CM");
            break;
        case MILK:
            strcat(filename, "MI");
            break;
        default:
            break;
        }
    }

    if (cup->creamerType != NONE) {
        switch (cup->toppingType)
        {
        case MARSHMELLOW:
            strcat(filename, "MA");
            break;
        case WHIPPED_CREAM:
            strcat(filename, "WC");
            break;
        default:
            break;
        }
    }

    if (cup->toppingType != NONE) {
        switch (cup->sauceType)
        {
        case CARAMEL:
            strcat(filename, "CA");
            break;
        case CHOCOLATE:
            strcat(filename, "CH");
            break;
        default:
            break;
        }
    }
    // if empty then set filename to EMPTY
    if (strcmp(filename, "") == 0) {
        strcat(filename, "EMPTY");
    }
    strcat(filename, ".png");
    char path[1000];
    strcpy(path, ASSETS_PATH"combination/");
    strcat(path, filename);
    // set cup texture to the filename
    LogDebug("Powder type: %d, Water: %d, Creamer: %d, Topping: %d, Sauce: %d\n", cup->powderType, cup->hasWater, cup->creamerType, cup->toppingType, cup->sauceType);
    LogDebug("NEW CUP IMAGE IS %s\n", path);
    cup->texture = LoadTexture(path);
}

void UpdateCup(Cup* cup, Ingredient* ingredient) {
    // If cup is not active, return
    if (!cup->active) return;

    // Check what type of ingredient it is and update the cup accordingly
    if (ingredient == &teaPowder && cup->powderType == NONE) {
        cup->powderType = GREEN_TEA;
    }
    else if (ingredient == &cocoaPowder && cup->powderType == NONE) {
        cup->powderType = COCOA;
    }
    else if (ingredient == &hotWater && cup->powderType != NONE) {
        cup->hasWater = true;
    }
    else if (ingredient == &condensedMilk && cup->hasWater == true) {
        cup->creamerType = CONDENSED_MILK;
    }
    else if (ingredient == &normalMilk && cup->hasWater == true) {
        cup->creamerType = MILK;
    }
    else if (ingredient == &marshMellow && cup->creamerType != NONE) {
        cup->toppingType = MARSHMELLOW;
    }
    else if (ingredient == &whippedCream && cup->creamerType != NONE) {
        cup->toppingType = WHIPPED_CREAM;
    }
    else if (ingredient == &caramelSauce && cup->toppingType != NONE) {
        cup->sauceType = CARAMEL;
    }
    else if (ingredient == &chocolateSauce && cup->toppingType != NONE) {
        cup->sauceType = CHOCOLATE;
    }
    else if (ingredient == &hotWater) {
        cup->hasWater = true;
    }

    UpdateCupImage(cup, ingredient);

}

Texture2D* DragAndDropIngredient(Ingredient* object, const DropArea* dropArea, Cup* cup, Camera2D* camera) {
    static bool isObjectBeingDragged = false;
    static Texture2D* current_dragging = NULL;
    static float offsetX = 0;
    static float offsetY = 0;

    Rectangle objectBounds = { object->position.x, object->position.y, (float)object->frameRectangle.width, (float)object->frameRectangle.height };
    Rectangle dropBounds = { dropArea->position.x, dropArea->position.y, (float)dropArea->texture.width, (float)dropArea->texture.height };

    if (IsMouseButtonDown(MOUSE_LEFT_BUTTON)) {
        Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
        if (CheckCollisionPointRec(mousePos, objectBounds) && (current_dragging == NULL || current_dragging == &object->texture)) {
            isObjectBeingDragged = true;
            offsetX = object->frameRectangle.width / 2;
            offsetY = object->frameRectangle.height / 2;
            float mouseX = mousePos.x;
            float mouseY = mousePos.y;

            object->position.x = mouseX - offsetX;
            object->position.y = mouseY - offsetY;
            current_dragging = &object->texture;
            return &object->texture;
        }
    }

    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON)) {
        isObjectBeingDragged = false;
        current_dragging = NULL;

        if (CheckCollisionRecs(objectBounds, dropBounds)) {
            if (object->canChangeCupTexture) {
                UpdateCup(cup,object);

                object->position.x = object->originalPosition.x;
                object->position.y = object->originalPosition.y;
            }
        }
        else {
            // Object is not inside the drop area, return it to the original position
            object->position.x = object->originalPosition.x;
            object->position.y = object->originalPosition.y;
        }
    }

    // Apply drag-and-drop with time-dependent positioning
    if (isObjectBeingDragged) {
        Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
        object->position.x = mousePos.x - offsetX;
        object->position.y = mousePos.y - offsetY;
    }

    if(current_dragging)
        return current_dragging;
	else
        return NULL;
}

Texture2D* DragAndDropIngredientPop(Ingredient* object, Ingredient* popObject, const DropArea* dropArea, Cup* cup, Camera2D* camera) {
    static bool isObjectBeingDragged = false;
    static Texture2D* current_dragging = NULL;
    static float offsetX = 0;
    static float offsetY = 0;


    Rectangle objectBounds = { object->position.x, object->position.y, (float)object->frameRectangle.width, (float)object->frameRectangle.height };
    Rectangle popObjectBounds = { popObject->position.x, popObject->position.y, (float)popObject->frameRectangle.width, (float)popObject->frameRectangle.height };
    Rectangle dropBounds = { dropArea->position.x, dropArea->position.y, (float)dropArea->texture.width, (float)dropArea->texture.height };


    if (IsMouseButtonDown(MOUSE_LEFT_BUTTON)) {
        Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
        if ((CheckCollisionPointRec(mousePos, objectBounds) || CheckCollisionPointRec(mousePos, popObjectBounds)) && (current_dragging == NULL || current_dragging == &object->texture)) {
            isObjectBeingDragged = true;
            offsetX = popObject->frameRectangle.width / 2;
            offsetY = popObject->frameRectangle.height / 2;
            float mouseX = mousePos.x;
            float mouseY = mousePos.y;

            popObject->position.x = mouseX - offsetX;
            popObject->position.y = mouseY - offsetY;
            current_dragging = &object->texture;
            return &object->texture;
        }
    }

    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON)) {
        isObjectBeingDragged = false;
        current_dragging = NULL;

        if (CheckCollisionRecs(popObjectBounds, dropBounds)) {
            if (object->canChangeCupTexture) {
                UpdateCup(cup,object);
                popObject->position.x = popObject->originalPosition.x;
                popObject->position.y = popObject->originalPosition.y;
            }
        }
        else {
            // Object is not inside the drop area, return it to the original position
            popObject->position.x = popObject->originalPosition.x;
            popObject->position.y = popObject->originalPosition.y;
        }
    }

    // Apply drag-and-drop with time-dependent positioning
    if (isObjectBeingDragged) {
        Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
        popObject->position.x = mousePos.x - offsetX;
        popObject->position.y = mousePos.y - offsetY;
    }

    if(current_dragging)
	    return current_dragging;
    else
        return NULL;
}

Rectangle frameRect(Ingredient i, int frameNum, int frameToShow) {
    int frameWidth = i.texture.width / frameNum;
    Rectangle frameRect = { frameWidth * (frameToShow - 1), 0, frameWidth, i.texture.height };
    return frameRect;
}

Rectangle frameRectCup(Cup i, int frameNum, int frameToShow) {
    int frameWidth = i.texture.width / frameNum;
    Rectangle frameRect = { frameWidth * (frameToShow - 1), 0, frameWidth, i.texture.height };
    return frameRect;
}

bool highlightItem(Ingredient* item, Camera2D* camera) {
    Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
    static bool isHovering;
    if (CheckCollisionPointRec(mousePos, (Rectangle) { item->position.x, item->position.y, item->frameRectangle.width, item->frameRectangle.height }) && item->totalFrames > 1) {
        item->frameRectangle = frameRect(*item, item->totalFrames, item->currentFrame + 1);
        return true;
    }
    else {
        item->frameRectangle = frameRect(*item, item->totalFrames, item->currentFrame);
        return false;
    }
}

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

// Start from night
int currentColorIndex = 3;
float dayNightCycleDuration = 120.0f;
// Skip to 1/2 of the night, so that the first transition is from night to morning
float colorTransitionTime = 0.5f;


void CustomLogger(int msgType, const char* text, va_list args)
{
    char timeStr[64] = { 0 };
    time_t now = time(NULL);
    struct tm* tm_info = localtime(&now);

    strftime(timeStr, sizeof(timeStr), "%Y-%m-%d %H:%M:%S", tm_info);
    printf("[%s] ", timeStr);

    // Calculate the size needed for the formatted log message
    int logMessageSize = vsnprintf(NULL, 0, text, args) + 1;
    char* logMessage = (char*)malloc(logMessageSize);

    switch (msgType)
    {
        case LOG_DEBUG: printf("[DEBUG]: "); break;
        case LOG_INFO: printf("[INFO] : "); break;
        case LOG_WARNING: printf("[WARN] : "); break;
        case LOG_ERROR: printf("[ERROR]: "); break;
        case LOG_FATAL: printf("[FATAL]: "); break;
        default: break;
    }

    // Format the log message and store it in logMessage
    vsnprintf(logMessage, logMessageSize, text, args);

    // Add message to the log array, with shifting logic
    if (DebugLogsIndex == DEBUG_MAX_LOGS_HISTORY) {
        // If the array is full, shift the previous messages to make space
        for (int i = 0; i < DEBUG_MAX_LOGS_HISTORY - 1; i++) {
            DebugLogs[i] = DebugLogs[i + 1];
        }
        DebugLogsIndex = DEBUG_MAX_LOGS_HISTORY - 1;
    }

    DebugLogs[DebugLogsIndex].type = msgType;
    DebugLogs[DebugLogsIndex].text = logMessage;
    DebugLogsIndex++;

    printf("%s\n", logMessage);
}

void LogDebug(const char* text, ...)
{
    va_list args;
    va_start(args, text);
    CustomLogger(LOG_DEBUG, text, args);
    va_end(args);
}

void Log(int msgType, const char* text, ...)
{
    va_list args;
    va_start(args, text);
    CustomLogger(msgType, text, args);
    va_end(args);
}

Color GetTextColorFromLogType(TraceLogLevel level)
{
	switch (level)
	{
    case LOG_DEBUG: return DARKGRAY;
	case LOG_INFO: return WHITE;
	case LOG_WARNING: return YELLOW;
	case LOG_ERROR: return RED;
    case LOG_FATAL: return ORANGE;
	default: return WHITE;
	}
}

double GetRandomDoubleValue(double min, double max)
{
    return min + (rand() / (double)RAND_MAX) * (max - min);
}


void DrawDragableItemFrame(Ingredient i) {
    DrawTextureRec(i.texture, i.frameRectangle, i.position, RAYWHITE);
    if (options->showDebug && debugToolToggles.showObjects)
    {
        DrawRectangleLinesEx((Rectangle) { i.position.x, i.position.y, i.frameRectangle.width, i.frameRectangle.height }, 1, RED);
        DrawRectangle(i.position.x, i.position.y - 20, 300, 20, Fade(GRAY, 0.7));
        DrawTextEx(meowFont, TextFormat("%s | XY %.2f,%.2f", "Ingredient", i.position.x, i.position.y), (Vector2) { i.position.x, i.position.y - 20 }, 20, 1, WHITE);
    }
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

        if (options->showDebug && debugToolToggles.showObjects) {
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

            DrawRectangle(item->position.x, item->position.y, 550, 20, Fade(GRAY, 0.7));
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
    if (options->showDebug && debugToolToggles.showObjects)
    {
        DrawRectangleLinesEx((Rectangle) { pos.x, pos.y, customersImageData[frame].happy.width / 2, customersImageData[frame].happy.height / 2 }, 1, RED);
        DrawRectangle(pos.x, pos.y - 20, 500, 20, Fade(GRAY, 0.7));
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

void DrawDebugLogs(Camera2D* camera)
{
    DrawRectangle(baseX, baseY + BASE_SCREEN_HEIGHT - 20 - (DEBUG_MAX_LOGS_HISTORY * 20), BASE_SCREEN_WIDTH, DEBUG_MAX_LOGS_HISTORY * 20 + 20, Fade(GRAY, 0.7));

    for (int i = 0; i < DEBUG_MAX_LOGS_HISTORY; i++) {
        int index = DEBUG_MAX_LOGS_HISTORY - i - 1;
		if (DebugLogs[index].text != NULL) {
			DrawTextEx(meowFont, DebugLogs[index].text, (Vector2) { baseX + 10, baseY + BASE_SCREEN_HEIGHT - 20 - (i * 20) }, 16, 1, GetTextColorFromLogType(DebugLogs[index].type));
		}
        else {
			break;
		}
	}
}

void DrawFpsGraph(Camera2D* camera)
{
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
    int graphY = baseY + 255;

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

    DrawTextEx(meowFont, "Frame Time (ms)", (Vector2) { baseX - 135 + BASE_SCREEN_WIDTH - 50, graphY - 25 }, 20, 2, GRAY);
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

void DrawDebugStats(Camera2D* camera)
{
    DrawRectangle(baseX, baseY, 1100, 70, Fade(GRAY, 0.7));

    Color color = GREEN;
    int fps = GetFPS();

    if (fps < options->targetFps * 0.7f) {
		color = RED;
	}
	else if (fps < options->targetFps * 0.9f) {
		color = YELLOW;
	}

    Vector2 mousePosition = GetMousePosition();
    Vector2 mouseWorldPos = GetScreenToWorld2D(mousePosition, *camera);

    DrawTextEx(meowFont, TextFormat("%d FPS | Target FPS %d | Window (%dx%d) | Render (%dx%d) | Fullscreen ", fps, options->targetFps, options->resolution.x, options->resolution.y, BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT, options->fullscreen ? "Yes" : "No"), (Vector2) { baseX + 10, baseY + 5 }, 20, 2, color);
    DrawTextEx(meowFont, TextFormat("Cursor %.2f,%.2f (%dx%d) | World %.2f,%.2f (%dx%d) | R Base World %.2f,%.2f", mousePosition.x, mousePosition.y, options->resolution.x, options->resolution.y, mouseWorldPos.x, mouseWorldPos.y, BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT, mouseWorldPos.x - baseX, mouseWorldPos.y - baseY), (Vector2) { baseX + 10, baseY + 25 }, 20, 2, WHITE);
    DrawTextEx(meowFont, TextFormat("Zoom %.2f | In View %s", camera->zoom, IsMousePositionInGameWindow(camera) ? "[Yes]" : "[No]"), (Vector2) { baseX + 10, baseY + 45 }, 20, 2, WHITE);
}

void DrawDebugOverlay(Camera2D *camera)
{
    if (options->showDebug)
    {
        // F1 - Toggle debug logs
        if (IsKeyPressed(KEY_F1))
        {
            debugToolToggles.showDebugLogs = !debugToolToggles.showDebugLogs;
        }
        // F2 - Toggle debug stats
        else if (IsKeyPressed(KEY_F2))
        {
            debugToolToggles.showStats = !debugToolToggles.showStats;
        }
        // F3 - Toggle debug graph
        else if (IsKeyPressed(KEY_F3))
        {
            debugToolToggles.showGraph = !debugToolToggles.showGraph;
        }
        //  F4 - Toggle debug objects
        else if (IsKeyPressed(KEY_F4))
        {
            debugToolToggles.showObjects = !debugToolToggles.showObjects;
        }
    }

    UpdateDebugFpsHistory();
    UpdateDebugFrameTimeHistory();

    DrawRectangle(baseX + BASE_SCREEN_WIDTH - 15 - 300, baseY + BASE_SCREEN_HEIGHT - 15 - 110, 300, 140, Fade(GRAY, 0.7));
    DrawTextEx(meowFont, "Debug Tools", (Vector2) { baseX + BASE_SCREEN_WIDTH - 15 - 290, baseY + BASE_SCREEN_HEIGHT - 15 - 100 }, 20, 2, WHITE);
    DrawTextEx(meowFont, TextFormat("Logs | %s | F1", debugToolToggles.showDebugLogs ? "[On]" : "[Off]"), (Vector2) { baseX + BASE_SCREEN_WIDTH - 15 - 290, baseY + BASE_SCREEN_HEIGHT - 15 - 80 }, 20, 2, debugToolToggles.showDebugLogs ? GREEN : WHITE);
    DrawTextEx(meowFont, TextFormat("Stats | %s | F2", debugToolToggles.showStats ? "[On]" : "[Off]"), (Vector2) { baseX + BASE_SCREEN_WIDTH - 15 - 290, baseY + BASE_SCREEN_HEIGHT - 15 - 60 }, 20, 2, debugToolToggles.showStats ? GREEN : WHITE);
    DrawTextEx(meowFont, TextFormat("Graph | %s | F3", debugToolToggles.showGraph ? "[On]" : "[Off]"), (Vector2) { baseX + BASE_SCREEN_WIDTH - 15 - 290, baseY + BASE_SCREEN_HEIGHT - 15 - 40 }, 20, 2, debugToolToggles.showGraph ? GREEN : WHITE);
    DrawTextEx(meowFont, TextFormat("Objects | %s | F4", debugToolToggles.showObjects ? "[On]" : "[Off]"), (Vector2) { baseX + BASE_SCREEN_WIDTH - 15 - 290, baseY + BASE_SCREEN_HEIGHT - 15 - 20 }, 20, 2, debugToolToggles.showObjects ? GREEN : WHITE);
    
    if (debugToolToggles.showDebugLogs)
        DrawDebugLogs(camera);
    if(debugToolToggles.showStats)
        DrawDebugStats(camera);
    if (debugToolToggles.showGraph)
    {
        DrawFpsGraph(camera);
        DrawFrameTime(camera);
    }

}

/* Definitions of branch customers */

// TO BE DESTROYED
#define PLACEHOLDER_ORDER "PLACEHOLDER_ORDER"
static int placeholder_static = 1;
static int global_score = 0;

void create_customer(Customer *customer, int patience, Order order, int currentTime, int orderEnd) {
    Customer newCustomer = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
    *customer = newCustomer;
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

void remove_customers(Customer *customer)
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
            remove_customers(customer);
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
        PlaySound(selectFx);
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
    selectFx = LoadSound(ASSETS_PATH"audio/select.wav");

    menuFallingItemTextures[0] = LoadTexture(ASSETS_PATH"image/falling_items/cara.png");
    menuFallingItemTextures[1] = LoadTexture(ASSETS_PATH"image/falling_items/cmilk.png");
    menuFallingItemTextures[2] = LoadTexture(ASSETS_PATH"image/falling_items/cocoa.png");
    menuFallingItemTextures[3] = LoadTexture(ASSETS_PATH"image/falling_items/gar.png");
    menuFallingItemTextures[4] = LoadTexture(ASSETS_PATH"image/falling_items/marshmello.png");
    menuFallingItemTextures[5] = LoadTexture(ASSETS_PATH"image/falling_items/matcha.png");
    menuFallingItemTextures[6] = LoadTexture(ASSETS_PATH"image/falling_items/milk.png");
    menuFallingItemTextures[7] = LoadTexture(ASSETS_PATH"image/falling_items/wcream.png");

    teaPowderTexture = LoadTexture(ASSETS_PATH"/spritesheets/GP.png");
    cocoaPowderTexture = LoadTexture(ASSETS_PATH"/spritesheets/CP.png");
    caramelSauceTexture = LoadTexture(ASSETS_PATH"/spritesheets/CA.png");
    chocolateSauceTexture = LoadTexture(ASSETS_PATH"/spritesheets/CH.png");
    condensedMilkTexture = LoadTexture(ASSETS_PATH"/spritesheets/CM.png");
    normalMilkTexture = LoadTexture(ASSETS_PATH"/spritesheets/MI.png");
    marshMellowTexture = LoadTexture(ASSETS_PATH"/spritesheets/MA.png");
    whippedCreamTexture = LoadTexture(ASSETS_PATH"/spritesheets/WC.png");
    hotWaterTexture = LoadTexture(ASSETS_PATH"/spritesheets/GAR.png");
    greenChonTexture = LoadTexture(ASSETS_PATH"/spritesheets/greenchon.png");
    cocoaChonTexture = LoadTexture(ASSETS_PATH"/spritesheets/cocoachon.png");

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
    UnloadSound(selectFx);

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
    SetMusicVolume(*currentBgm, bgmVolume);
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
            SetMusicVolume(*bgm, bgmVolume);
            bgm->looping = true;
            isCurrentBgmPaused = false;
        }
        return;
    }

    currentBgm = bgm;
    PlayMusicStream(*currentBgm);
    SetMusicVolume(*currentBgm, bgmVolume);
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

Color ColorAlphaOverride(Color color, float alpha)
{
	return (Color) { color.r, color.g, color.b, (unsigned char)(alpha * 255) };
}

Color ColorLerp(Color a, Color b, float t) {
    t = fmin(fmax(t, 0.0f), 1.0f);

    // Ensure that the colors are vibrant by making sure the RGB values are closer to 255
    a.r = (unsigned char)(a.r + (255 - a.r) * t);
    a.g = (unsigned char)(a.g + (255 - a.g) * t);
    a.b = (unsigned char)(a.b + (255 - a.b) * t);

    Color result;
    result.r = (unsigned char)(a.r + (b.r - a.r) * t);
    result.g = (unsigned char)(a.g + (b.g - a.g) * t);
    result.b = (unsigned char)(a.b + (b.b - a.b) * t);
    result.a = (unsigned char)(a.a + (b.a - a.a) * t);
    return result;
}


void DrawDayNightCycle()
{
    const Color dayNightColors[] = {
        (Color){173, 216, 230, 255},  // Morning (Anime Light Blue)
        (Color){0, 102, 204, 255},    // Afternoon (Anime Blue)
        (Color){245, 161, 59, 255},    // Evening (Anime Orange)
        (Color){0, 0, 102, 255}       // Night (Anime Dark Blue)
    };

    float colorTransitionSpeed = (float)(sizeof(dayNightColors) / sizeof(dayNightColors[0])) / dayNightCycleDuration;

    // Determine the color to interpolate from and to
    int fromColorIndex = currentColorIndex;
    int toColorIndex = (currentColorIndex + 1) % (sizeof(dayNightColors) / sizeof(dayNightColors[0]));

    // Calculate the interpolation factor (0 to 1) based on colorTransitionTime
    float t = fmin(colorTransitionTime, 1.0f);

    // Interpolate between the colors
    Color fromColor = dayNightColors[fromColorIndex];
    Color toColor = dayNightColors[toColorIndex];
    Color currentColor = ColorLerp(fromColor, toColor, t);

    // Draw the day/night color overlay with the scaled dimensions
    DrawRectangle(baseX, baseY, BASE_SCREEN_WIDTH, BASE_SCREEN_HEIGHT, currentColor);

    // Draw day/night cycle debug overlay
    if (options->showDebug && debugToolToggles.showObjects)
    {
        DrawTextEx(meowFont, TextFormat("Time %.2f/%.2f | Phrase %d/%d", colorTransitionTime * dayNightCycleDuration, dayNightCycleDuration, currentColorIndex + 1, (sizeof(dayNightColors) / sizeof(dayNightColors[0]))), (Vector2) { baseX + BASE_SCREEN_WIDTH - 500, baseY + 20 }, 20, 2, WHITE);
    }

    // Update the colorTransitionTime
    if (colorTransitionTime >= 1.0f)
    {
        currentColorIndex = toColorIndex;
        colorTransitionTime = 0;
    }
    else
    {
        colorTransitionTime += GetFrameTime() * colorTransitionSpeed;
    }
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

    float alpha = 0.0f;
    double fadeInDuration = 0.35;
    double fadeOutDuration = 0.35;
    bool isFadingIn = true;
    bool isFadingOut = false;

    PlayBgmIfStopped(&menuBgm);

    while (!WindowShouldClose())
    {
        // Calculate delta time
        double deltaTime = GetTime() - lastFrameTime;
        lastFrameTime = GetTime();

        WindowUpdate(camera);

        if (isFadingIn)
		{
			alpha += deltaTime / fadeInDuration;
			if (alpha >= 1.0f)
			{
				alpha = 1.0f;
				isFadingIn = false;
			}
		}

	    if (isFadingOut)
        {
            alpha -= deltaTime / fadeOutDuration;
            if (alpha <= 0.0f)
            {
                alpha = 0.0f;
                isFadingOut = false;
                MainMenuUpdate(camera, false);
            }
        }

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
        if (!firstRender && IsMouseButtonPressed(MOUSE_LEFT_BUTTON) && !isFadingIn && !isFadingOut) {
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
                isFadingOut = true;
                PlaySelectSound();
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
        if (!isFadingIn && !isFadingOut)
        {
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
        //DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        DrawDayNightCycle();

        // Draw falling items behind the menu
        DrawMenuFallingItems(deltaTime, true);

        DrawCustomerInMenu(deltaTime);

        DrawTextureEx(backgroundOverlayTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        // Draw falling items in front of the menu
        DrawMenuFallingItems(deltaTime, false);

        // Music
        DrawTextureEx(options->musicEnabled ? checkboxChecked : checkbox, (Vector2) { musicRect.x + 10, musicRect.y + 10 }, 0.0f, 1.0f / 6.0f, ColorAlphaOverride(WHITE, alpha));
		DrawTextEx(meowFont, "Music", (Vector2) { musicRect.x + 80, musicRect.y + 22 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));

        // Sound FX
        DrawTextureEx(options->soundFxEnabled ? checkboxChecked : checkbox, (Vector2) { soundFxRect.x + 10, soundFxRect.y + 10 }, 0.0f, 1.0f / 6.0f, ColorAlphaOverride(WHITE, alpha));
        DrawTextEx(meowFont, "Sound FX", (Vector2) { soundFxRect.x + 80, soundFxRect.y + 22 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));

        // Fullscreen
        DrawTextureEx(options->fullscreen ? checkboxChecked : checkbox, (Vector2) { fullscreenRect.x + 10, fullscreenRect.y + 10 }, 0.0f, 1.0f / 6.0f, ColorAlphaOverride(WHITE, alpha));
        DrawTextEx(meowFont, "Fullscreen", (Vector2) { fullscreenRect.x + 80, fullscreenRect.y + 22 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));

        // Debug
        DrawTextureEx(options->showDebug ? checkboxChecked : checkbox, (Vector2) { debugRect.x + 10, debugRect.y + 10 }, 0.0f, 1.0f / 6.0f, ColorAlphaOverride(WHITE, alpha));
		DrawTextEx(meowFont, "Debug", (Vector2) { debugRect.x + 80, debugRect.y + 22 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));

        // Difficulty
        DrawTextureEx(left_arrow, (Vector2) { difficultyDecrementRect.x , difficultyDecrementRect.y}, 0.0f, 1.0f / 5.0f, ColorAlphaOverride(WHITE, alpha));
        DrawTextureEx(right_arrow, (Vector2) { difficultyIncrementRect.x, difficultyIncrementRect.y }, 0.0f, 1.0f / 5.0f, ColorAlphaOverride(WHITE, alpha));
        DrawTextEx(meowFont, "Difficulty", (Vector2) { difficultyRect.x + 80, difficultyRect.y + 10 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));
        DrawTextEx(meowFont, StringFromDifficultyEnum(options->difficulty), (Vector2) { difficultyRect.x + 80, difficultyRect.y + 42 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));

        // Resolution
        DrawTextureEx(left_arrow, (Vector2) { resolutionDecrementRect.x, resolutionDecrementRect.y }, 0.0f, 1.0f / 5.0f, ColorAlphaOverride(WHITE, alpha));
        DrawTextureEx(right_arrow, (Vector2) { resolutionIncrementRect.x, resolutionDecrementRect.y }, 0.0f, 1.0f / 5.0f, ColorAlphaOverride(WHITE, alpha));
        DrawTextEx(meowFont, "Resolution", (Vector2) { resolutionRect.x + 80, resolutionRect.y + 10 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));
        DrawTextEx(meowFont, TextFormat("%dx%d", options->resolution.x, options->resolution.y), (Vector2) { resolutionRect.x + 80, resolutionRect.y + 42 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));

        // FPS
        DrawTextureEx(left_arrow, (Vector2) { fpsDecrementRect.x, fpsDecrementRect.y }, 0.0f, 1.0f / 5.0f, ColorAlphaOverride(WHITE, alpha));
        DrawTextureEx(right_arrow, (Vector2) { fpsIncrementRect.x, fpsDecrementRect.y }, 0.0f, 1.0f / 5.0f, ColorAlphaOverride(WHITE, alpha));
		DrawTextEx(meowFont, "Target FPS", (Vector2) { fpsRect.x + 80, fpsRect.y + 10 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));
        DrawTextEx(meowFont, TextFormat("%d FPS", options->targetFps), (Vector2) { fpsRect.x + 80, fpsRect.y + 42 }, 32, 2, ColorAlphaOverride(MAIN_BROWN, alpha));


        // Back
        DrawRectangleRec(backRect, isBackHovered ? ColorAlphaOverride(MAIN_ORANGE, alpha) : ColorAlphaOverride(MAIN_BROWN, alpha));
        DrawTextEx(meowFont, "Back", (Vector2) { backRect.x + 40, backRect.y + 22 }, 32, 2, ColorAlphaOverride(WHITE, alpha));

        // Draw debug
        if (options->showDebug && debugToolToggles.showObjects)
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

    ExitApplication();
}

void GameUpdate(Camera2D *camera)
{
    double lastFrameTime = GetTime();
    bool isDragging = false;

    bool isHovering = false;
    bool hoversoundPlayed = false;

    Cup cup = {
        LoadTexture(ASSETS_PATH"combination/EMPTY.png"),
        (Vector2) {0, 0},
        NONE,
        false,
        NONE,
        NONE,
        NONE,
        false
    };

    plate = (DropArea){ LoadTexture(ASSETS_PATH"/spritesheets/MAT.png"), oriplatePosition };
    Texture2D cups = LoadTexture(ASSETS_PATH"/spritesheets/CUPS.png");

    teaPowder = (Ingredient){ teaPowderTexture, true, oriteapowderPosition, oriteapowderPosition };
    teaPowder.totalFrames = 3;
    teaPowder.frameRectangle = frameRect(teaPowder, teaPowder.totalFrames, teaPowder.currentFrame);
    cocoaPowder = (Ingredient){ cocoaPowderTexture, true, oricocoapowderPosition, oricocoapowderPosition };
    cocoaPowder.totalFrames = 3;
    cocoaPowder.currentFrame = 1;
    cocoaPowder.frameRectangle = frameRect(cocoaPowder, cocoaPowder.totalFrames, cocoaPowder.currentFrame);

    caramelSauce = (Ingredient){ caramelSauceTexture, true, oricaramelPosition, oricaramelPosition };
    caramelSauce.totalFrames = 3;
    caramelSauce.currentFrame = 1;
    caramelSauce.frameRectangle = frameRect(caramelSauce, caramelSauce.totalFrames, caramelSauce.currentFrame);

    chocolateSauce = (Ingredient){ chocolateSauceTexture, true, orichocolatePosition, orichocolatePosition };
    chocolateSauce.totalFrames = 3;
    chocolateSauce.currentFrame = 1;
    chocolateSauce.frameRectangle = frameRect(chocolateSauce, chocolateSauce.totalFrames, chocolateSauce.currentFrame);

    condensedMilk = (Ingredient){ condensedMilkTexture, true, oricondensedmilkPosition, oricondensedmilkPosition };
    condensedMilk.totalFrames = 2;
    condensedMilk.currentFrame = 1;
    condensedMilk.frameRectangle = frameRect(condensedMilk, condensedMilk.totalFrames, condensedMilk.currentFrame);

    normalMilk = (Ingredient){ normalMilkTexture, true, orimilkPosition, orimilkPosition };
    normalMilk.totalFrames = 2;
    normalMilk.currentFrame = 1;
    normalMilk.frameRectangle = frameRect(normalMilk, normalMilk.totalFrames, normalMilk.currentFrame);

    marshMellow = (Ingredient){ marshMellowTexture, true, orimarshmellowPosition, orimarshmellowPosition };
    marshMellow.totalFrames = 2;
    marshMellow.currentFrame = 1;
    marshMellow.frameRectangle = frameRect(marshMellow, marshMellow.totalFrames, marshMellow.currentFrame);

    whippedCream = (Ingredient){ whippedCreamTexture, true, oriwhippedPosition, oriwhippedPosition };
    whippedCream.totalFrames = 2;
    whippedCream.currentFrame = 1;
    whippedCream.frameRectangle = frameRect(whippedCream, whippedCream.totalFrames, whippedCream.currentFrame);

    hotWater = (Ingredient){ hotWaterTexture, true, oriwaterPosition, oriwaterPosition };
    hotWater.totalFrames = 3;
    hotWater.currentFrame = 1;
    hotWater.frameRectangle = frameRect(hotWater, hotWater.totalFrames, hotWater.currentFrame);

    greenChon = (Ingredient){ greenChonTexture, false, hiddenPosition, hiddenPosition };
    greenChon.totalFrames = 1;
    greenChon.currentFrame = 1;
    greenChon.frameRectangle = frameRect(greenChon, greenChon.totalFrames, greenChon.currentFrame);

    cocoaChon = (Ingredient){ cocoaChonTexture, false, hiddenPosition, hiddenPosition };
    cocoaChon.totalFrames = 1;
    cocoaChon.currentFrame = 1;
	cocoaChon.frameRectangle = frameRect(cocoaChon, cocoaChon.totalFrames, cocoaChon.currentFrame);

    Texture2D* currentDrag = NULL;

    while (!WindowShouldClose())
    {
        // Calculate delta time
        double deltaTime = GetTime() - lastFrameTime;
        lastFrameTime = GetTime();

        WindowUpdate(camera);
        
        // Dragable items
        if (currentDrag == NULL || currentDrag == &teaPowder.texture) {
            currentDrag = DragAndDropIngredientPop(&teaPowder, &greenChon, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &cocoaPowder.texture) {
            // currentDrag = DragAndDropIngredient(&cocoaPowder, &plate, &cup, camera);
            currentDrag = DragAndDropIngredientPop(&cocoaPowder, &cocoaChon, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &condensedMilk.texture) {
            currentDrag = DragAndDropIngredient(&condensedMilk, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &normalMilk.texture) {
            currentDrag = DragAndDropIngredient(&normalMilk, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &whippedCream.texture) {
            currentDrag = DragAndDropIngredient(&whippedCream, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &marshMellow.texture) {
            currentDrag = DragAndDropIngredient(&marshMellow, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &caramelSauce.texture) {
            currentDrag = DragAndDropIngredient(&caramelSauce, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &chocolateSauce.texture) {
            currentDrag = DragAndDropIngredient(&chocolateSauce, &plate, &cup, camera);
        }if (currentDrag == NULL || currentDrag == &hotWater.texture) {
            currentDrag = DragAndDropIngredient(&hotWater, &plate, &cup, camera);
        }

        if (currentDrag == NULL || currentDrag == &cup.texture) {
            currentDrag = DragAndDropCup(&cup, &plate, camera);
        }

        isHovering = false;
        // check mouse not down
        if (IsMouseButtonUp(MOUSE_LEFT_BUTTON)) {
            // call highlightItem for each item
            isHovering = highlightItem(&teaPowder, camera) || isHovering;
            isHovering = highlightItem(&cocoaPowder, camera) || isHovering;
            isHovering = highlightItem(&condensedMilk, camera) || isHovering;
            isHovering = highlightItem(&normalMilk, camera) || isHovering;
            isHovering = highlightItem(&whippedCream, camera) || isHovering;
            isHovering = highlightItem(&marshMellow, camera) || isHovering;
            isHovering = highlightItem(&caramelSauce, camera) || isHovering;
            isHovering = highlightItem(&chocolateSauce, camera) || isHovering;
            isHovering = highlightItem(&hotWater, camera) || isHovering;
        }
        else {
            isHovering = false;
        }
        if (isHovering && !hoversoundPlayed) {

            hoversoundPlayed = true;
            //PlaySound(hover);

        }
        else if (!isHovering) {
            hoversoundPlayed = false;
        }

        Vector2 mousePos = GetScreenToWorld2D(GetMousePosition(), *camera);
        if (CheckCollisionPointRec(mousePos, (Rectangle) { cup.position.x, cup.position.y, cup.frameRectangle.width, cup.frameRectangle.height })) {
            cup.frameRectangle = frameRectCup(cup, 2, 2);
        }
        else {
            cup.frameRectangle = frameRectCup(cup, 2, 1);
        }

        // Draw

        BeginDrawing();
        ClearBackground(BLACK);


        BeginMode2D(*camera);


        int imageWidth = backgroundTexture.width;
        int imageHeight = backgroundTexture.height;

        float scaleX = (float)BASE_SCREEN_WIDTH / imageWidth;
        float scaleY = (float)BASE_SCREEN_HEIGHT / imageHeight;

        DrawDayNightCycle();

		/* Customers */
		//Customer customer1 = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
		//Order order1;
		//Customer customer2 = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
		//Order order2;
		//Customer customer3 = createCustomer(EMOTION_HAPPY, 2.0, 4.0, 0.25, true);
		//Order order3;
		//Customers customers;
        //customers.customer1 = customer1;
        //customers.customer2 = customer2;
        //customers.customer3 = customer3;

        Customer customer1;
        Customer customer2;
        Customer customer3;

        Order order1;
        Order order2;
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

        DrawTextureEx(backgroundOverlayTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);

        DrawTexture(plate.texture, oriplatePosition.x, oriplatePosition.y, WHITE);
        DrawDragableItemFrame(cocoaPowder);
        DrawDragableItemFrame(teaPowder);
        DrawDragableItemFrame(caramelSauce);
        DrawDragableItemFrame(chocolateSauce);
        DrawDragableItemFrame(condensedMilk);
        DrawDragableItemFrame(normalMilk);
        DrawDragableItemFrame(marshMellow);
        DrawDragableItemFrame(whippedCream);
        DrawDragableItemFrame(hotWater);

        DrawTexture(cups, oricupsPostion.x, oricupsPostion.y, WHITE);
        // DrawTexture(cup.texture, cup.position.x, cup.position.y, WHITE);

        if(cup.active)
            DrawTextureRec(cup.texture, cup.frameRectangle, cup.position, WHITE);

        DrawTexture(greenChon.texture, greenChon.position.x, greenChon.position.y, WHITE);
        DrawTexture(cocoaChon.texture, cocoaChon.position.x, cocoaChon.position.y, WHITE);

        // Draw debug for cup
        if (options->showDebug && debugToolToggles.showObjects)
        {
            // Cup
            DrawRectangleLinesEx((Rectangle) { cup.position.x, cup.position.y, cup.frameRectangle.width, cup.frameRectangle.height }, 1, RED);
            DrawRectangle(cup.position.x, cup.position.y - 20, 300, 20, Fade(GRAY, 0.7));
            DrawTextEx(meowFont, TextFormat("%s | XY %.2f,%.2f", "Cup", cup.position.x, cup.position.y), (Vector2) { cup.position.x, cup.position.y - 20 }, 20, 1, WHITE);

            // Cups
            DrawRectangleLinesEx((Rectangle) { oricupsPostion.x, oricupsPostion.y, cups.width, cups.height }, 1, RED);
            DrawRectangle(oricupsPostion.x, oricupsPostion.y - 20, 300, 20, Fade(GRAY, 0.7));
            DrawTextEx(meowFont, TextFormat("%s | XY %.2f,%.2f", "Cups", oricupsPostion.x, oricupsPostion.y), (Vector2) { oricupsPostion.x, oricupsPostion.y - 20 }, 20, 1, WHITE);

            // Plate
            DrawRectangleLinesEx((Rectangle) { oriplatePosition.x, oriplatePosition.y, plate.texture.width, plate.texture.height }, 1, RED);
            DrawRectangle(oriplatePosition.x, oriplatePosition.y - 20, 300, 20, Fade(GRAY, 0.7));
            DrawTextEx(meowFont, TextFormat("%s | XY %.2f,%.2f", "Plate", oriplatePosition.x, oriplatePosition.y), (Vector2) { oriplatePosition.x, oriplatePosition.y - 20 }, 20, 1, WHITE);
        }

		/* Customers TEST AREA END*/
        if(&customers.customer1 != NULL)
            UpdateMenuCustomerBlink(&customers.customer1, deltaTime);
        if (&customers.customer2 != NULL)
            UpdateMenuCustomerBlink(&customers.customer2, deltaTime);
        if (&customers.customer3 != NULL)
            UpdateMenuCustomerBlink(&customers.customer3, deltaTime);


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
        // DrawTextureEx(backgroundTexture, (Vector2) { baseX, baseY }, 0.0f, fmax(scaleX, scaleY), WHITE);
        
        DrawDayNightCycle();

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
        if (options->showDebug && debugToolToggles.showObjects)
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

    SetTraceLogCallback(CustomLogger);
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
