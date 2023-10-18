#include "raylib.h"
#include <stdio.h>


#define SCREEN_WIDTH (1920)
#define SCREEN_HEIGHT (1080)
#define TARGET_FPS (60)

#define WINDOW_TITLE "Window title"

const Vector2 originalCatPosition = {100, 100};
const Vector2 originalTeaPosition = {600, 250};

const Vector2 oriteapowderPosition = {750,600};
const Vector2 oricocoapowderPosition = {500,750};
const Vector2 oricondensedmilkPosition = {100,500};
const Vector2 orimilkPosition = {300,500};
const Vector2 orimarshmellowPosition = {100,200};
const Vector2 oriwhippedPosition = {400,200};
const Vector2 oricaramelPosition = {600,200};
const Vector2 orichocolatePosition = {900,300};


const Vector2 hiddenPosition = {-2000, -2000};



Texture2D* DragAndDropPop(Texture2D* object, Vector2* objectPosition, Texture2D* startObject, Vector2* startPosition, const Rectangle* dropArea, Vector2 originalPosition) {
    static bool isObjectBeingDragged = false;
    static Texture2D* current_dragging = NULL;
    static float offsetX = 0;
    static float offsetY = 0;


    Rectangle objectBounds = { objectPosition->x, objectPosition->y, (float)object->width, (float)object->height };
    Rectangle startobjectBonds = { startPosition->x, startPosition->y, (float)startObject->width, (float)startObject->height };
    

    if (IsMouseButtonDown(MOUSE_LEFT_BUTTON)) {
        // printf("MOUSE DOWN");
        if ((CheckCollisionPointRec(GetMousePosition(), objectBounds) || CheckCollisionPointRec(GetMousePosition(), startobjectBonds)) && (current_dragging == NULL || current_dragging == object)) {
            // printf("SEND HELP");
            isObjectBeingDragged = true;  
            offsetX = object->width /2;
            offsetY = object->height /2;
            
            objectPosition->x = GetMouseX() - offsetX;
            objectPosition->y = GetMouseY() - offsetY;
            current_dragging = object;
            return object;
        }
    }

    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON)) {
        isObjectBeingDragged = false;
        current_dragging = NULL;

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

    return NULL;
}

Texture2D* DragAndDrop(Texture2D* object, Vector2* objectPosition, const Rectangle* dropArea, Vector2 originalPosition) {
    static bool isObjectBeingDragged = false;
    static Texture2D* current_dragging = NULL;
    static float offsetX = 0;
    static float offsetY = 0;


    Rectangle objectBounds = { objectPosition->x, objectPosition->y, (float)object->width, (float)object->height };
    

    if (IsMouseButtonDown(MOUSE_LEFT_BUTTON)) {
        // printf("MOUSE DOWN");
        if (CheckCollisionPointRec(GetMousePosition(), objectBounds) && (current_dragging == NULL || current_dragging == object)) {
            // printf("SEND HELP");
            isObjectBeingDragged = true;  
            offsetX = object->width /2;
            offsetY = object->height /2;
            
            objectPosition->x = GetMouseX() - offsetX;
            objectPosition->y = GetMouseY() - offsetY;
            current_dragging = object;
            return object;
        }
    }

    if (IsMouseButtonReleased(MOUSE_LEFT_BUTTON)) {
        isObjectBeingDragged = false;
        current_dragging = NULL;

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

    return NULL;
}


int main(void)
{
    InitWindow(SCREEN_WIDTH, SCREEN_HEIGHT, WINDOW_TITLE);
    SetTargetFPS(TARGET_FPS);

    Texture2D texture = LoadTexture(ASSETS_PATH"test.png");

    Vector2 platePosition = {1500, 500};
    Rectangle plateArea = { platePosition.x, platePosition.y, 200, 200 };

    Texture2D cocoapowder = LoadTexture(ASSETS_PATH"cocoapowder.png");
    Vector2 cocoapowerPosition = {500,750};
    Texture2D teapowder = LoadTexture(ASSETS_PATH"teapowder.png");
    Vector2 teapowderPosition = {750,600};

    Texture2D condensedmilk = LoadTexture(ASSETS_PATH"condensedmilk.png");
    Vector2 condensedmilkPosition = {100,500};
    Texture2D milk = LoadTexture(ASSETS_PATH"milk.png");
    Vector2 milkPosition = {300,500};

    Texture2D marshmellow = LoadTexture(ASSETS_PATH"marshmallow.png");
    Vector2 marshmellowPosition = {100,200};
    Texture2D whippedcream = LoadTexture(ASSETS_PATH"whippedcream.png");
    Vector2 whippedcreamPosition = {400,200};


    Texture2D caramel = LoadTexture(ASSETS_PATH"caramel.png");
    Vector2 caramelPosition = {600,200};
    Texture2D chocolate = LoadTexture(ASSETS_PATH"chocolate.png");
    Vector2 chocolatePosition = {900,300};
    
    
    // Texture2D cat = LoadTexture(ASSETS_PATH"cat.png");
    // Vector2 catPosition = {100,100};
    // Texture2D kitten = LoadTexture(ASSETS_PATH"kitten.png");
    // Vector2 kittenPosition = {hiddenPosition.x,hiddenPosition.y};

    // Texture2D tea = LoadTexture(ASSETS_PATH"tea.png");
    // Vector2 teaPosition = {600,250};


    Texture2D* currentDrag = NULL;


    while (!WindowShouldClose())
    {   
        // DragAndDropPop(Texture2D* object, Vector2* objectPosition, Texture2D* startObject, Vector2* startPosition, const Rectangle* dropArea, Vector2 originalPosition)
        // if(currentDrag == NULL || currentDrag == &kitten){
        //     currentDrag = DragAndDropPop(&kitten, &kittenPosition, &cat, &catPosition, &plateArea, hiddenPosition);
        // }
        // if(currentDrag == NULL || currentDrag == &tea){
        //     currentDrag = DragAndDrop(&tea, &teaPosition, &plateArea, originalTeaPosition);
        // }

        if(currentDrag == NULL || currentDrag == &cocoapowder){
            currentDrag = DragAndDrop(&cocoapowder, &cocoapowerPosition, &plateArea, oricocoapowderPosition);
        }
        if(currentDrag == NULL || currentDrag == &teapowder){
            currentDrag = DragAndDrop(&teapowder, &teapowderPosition, &plateArea, oriteapowderPosition);
        }
        if(currentDrag == NULL || currentDrag == &condensedmilk){
            currentDrag = DragAndDrop(&condensedmilk, &condensedmilkPosition, &plateArea, oricondensedmilkPosition);
        }
        if(currentDrag == NULL || currentDrag == &milk){
            currentDrag = DragAndDrop(&milk, &milkPosition, &plateArea, orimilkPosition);
        }
       if(currentDrag == NULL || currentDrag == &marshmellow){
            currentDrag = DragAndDrop(&marshmellow, &marshmellowPosition, &plateArea, orimarshmellowPosition);
        }
        if(currentDrag == NULL || currentDrag == &whippedcream){
            currentDrag = DragAndDrop(&whippedcream, &whippedcreamPosition, &plateArea, oriwhippedPosition);
        }
       if(currentDrag == NULL || currentDrag == &caramel){
            currentDrag = DragAndDrop(&caramel, &caramelPosition, &plateArea, oricaramelPosition);
        }
        if(currentDrag == NULL || currentDrag == &chocolate){
            currentDrag = DragAndDrop(&chocolate, &chocolatePosition, &plateArea, orichocolatePosition);
        }

        BeginDrawing();

        ClearBackground(RAYWHITE);

        const int texture_x = SCREEN_WIDTH / 2 - texture.width / 2;
        const int texture_y = SCREEN_HEIGHT / 2 - texture.height / 2;
        DrawTexture(texture, texture_x, texture_y, WHITE);
        DrawRectangle(platePosition.x, platePosition.y, 200 ,200, RED);

        // DrawTexture(cat, catPosition.x ,catPosition.y, WHITE);
        // DrawTexture(tea, teaPosition.x ,teaPosition.y, WHITE);

        // DrawTexture(kitten,kittenPosition.x,kittenPosition.y,WHITE);

        DrawTexture(teapowder, teapowderPosition.x, teapowderPosition.y, WHITE);
        DrawTexture(cocoapowder, cocoapowerPosition.x, cocoapowerPosition.y, WHITE);
        DrawTexture(condensedmilk, condensedmilkPosition.x, condensedmilkPosition.y, WHITE);
        DrawTexture(milk, milkPosition.x, milkPosition.y, WHITE);
        DrawTexture(marshmellow, marshmellowPosition.x, marshmellowPosition.y, WHITE);
        DrawTexture(whippedcream, whippedcreamPosition.x, whippedcreamPosition.y, WHITE);
        DrawTexture(caramel, caramelPosition.x, caramelPosition.y, WHITE);
        DrawTexture(chocolate, chocolatePosition.x, chocolatePosition.y, WHITE);


        
        
        const char* text = "It works :3";
        const Vector2 text_size = MeasureTextEx(GetFontDefault(), text, 20, 1);
        DrawText(text, SCREEN_WIDTH / 2 - text_size.x / 2, texture_y + texture.height + text_size.y + 10, 20, BLACK);

        EndDrawing();
    }

    CloseWindow();

    return 0;
}

