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


const Vector2 hiddenPosition = {-3000, -3000};



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

    Texture2D MilkTea = LoadTexture(ASSETS_PATH"milktea.png");
    Vector2 MilkTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D MilkCocoa = LoadTexture(ASSETS_PATH"milkcocoa.png");
    Vector2 MilkCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CTea = LoadTexture(ASSETS_PATH"milktea.png");
    Vector2 CTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CCocoa = LoadTexture(ASSETS_PATH"milkcocoa.png");
    Vector2 CCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
   

    Texture2D WhipMilkTea = LoadTexture(ASSETS_PATH"whippedteamilk.png");
    Vector2 WhipMilkTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D WhipMilkCocoa = LoadTexture(ASSETS_PATH"whippedchoc.png");
    Vector2 WhipMilkCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D WhipCTea = LoadTexture(ASSETS_PATH"whippedteamilk2.png");
    Vector2 WhipCTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D WhipCCocoa = LoadTexture(ASSETS_PATH"whippedchoc2.png");
    Vector2 WhipCCocoaPosition = {hiddenPosition.x,hiddenPosition.y};


    Texture2D MarshMilkTea = LoadTexture(ASSETS_PATH"marshmellowmilktea.png");
    Vector2 MarshMilkTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D MarshMilkCocoa = LoadTexture(ASSETS_PATH"marshmellowchoc.png");
    Vector2 MarshMilkCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D MarshCTea = LoadTexture(ASSETS_PATH"whippedteamilk2.png");
    Vector2 MarshCTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D MarshCCocoa = LoadTexture(ASSETS_PATH"marshmellowmilktea2.png");
    Vector2 MarshCCocoaPosition = {hiddenPosition.x,hiddenPosition.y};


    Texture2D CrmWhipMilkTea = LoadTexture(ASSETS_PATH"caramelwhiptea.png");
    Vector2 CrmWhipMilkTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CrmWhipMilkCocoa = LoadTexture(ASSETS_PATH"caramelwhipchoc.png");
    Vector2 CrmWhipMilkCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CrmWhipCTea = LoadTexture(ASSETS_PATH"caramelwhiptea2.png");
    Vector2 CrmWhipCTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CrmWhipCCocoa = LoadTexture(ASSETS_PATH"caramelwhipchoc2.png");
    Vector2 CrmWhipCCocoaPosition = {hiddenPosition.x,hiddenPosition.y};


    Texture2D CrmMarshMilkTea = LoadTexture(ASSETS_PATH"caramelmarshtea.png");
    Vector2 CrmMarshMilkTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CrmMarshMilkCocoa = LoadTexture(ASSETS_PATH"caramelmarshchoc.png");
    Vector2 CrmMarshMilkCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CrmMarshCTea = LoadTexture(ASSETS_PATH"caramelmarshtea2.png");
    Vector2 CrmMarshCTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D CrmMarshCCocoa = LoadTexture(ASSETS_PATH"caramelmarshchoc2.png");
    Vector2 CrmMarshCCocoaPosition = {hiddenPosition.x,hiddenPosition.y};


    Texture2D ChocWhipMilkTea = LoadTexture(ASSETS_PATH"chocwhippedtea.png");
    Vector2 ChocWhipMilkTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D ChocWhipMilkCocoa = LoadTexture(ASSETS_PATH"chocwhippedchoc.png");
    Vector2 ChocWhipMilkCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D ChocWhipCTea = LoadTexture(ASSETS_PATH"chocwhippedtea2.png");
    Vector2 ChocWhipCTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D ChocWhipCCocoa = LoadTexture(ASSETS_PATH"chocwhippedchoc2.png");
    Vector2 ChocWhipCCocoaPosition = {hiddenPosition.x,hiddenPosition.y};

    Texture2D ChocMarshMilkTea = LoadTexture(ASSETS_PATH"chocmarshtea.png");
    Vector2 ChocMarshMilkTeaPosition ={hiddenPosition.x,hiddenPosition.y};
    Texture2D ChocMarshMilkCocoa = LoadTexture(ASSETS_PATH"chocmarshchoc.png");
    Vector2 ChocMarshMilkCocoaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D ChocMarshCTea = LoadTexture(ASSETS_PATH"chocmarshtea2.png");
    Vector2 ChocMarshCTeaPosition = {hiddenPosition.x,hiddenPosition.y};
    Texture2D ChocMarshCCocoa = LoadTexture(ASSETS_PATH"chocmarshchoc2.png");
    Vector2 ChocMarshCCocoaPosition = {hiddenPosition.x,hiddenPosition.y};

    
    
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

    
        DrawTexture(MilkTea, MilkTeaPosition.x, MilkTeaPosition.y, WHITE);
        DrawTexture(MilkCocoa, MilkCocoaPosition.x, MilkCocoaPosition.y, WHITE);
        DrawTexture(CTea, CTeaPosition.x, CTeaPosition.y, WHITE);
        DrawTexture(CCocoa, CCocoaPosition.x, CCocoaPosition.y, WHITE);

        DrawTexture(WhipMilkTea, WhipMilkTeaPosition.x, WhipMilkTeaPosition.y, WHITE);
        DrawTexture(WhipMilkCocoa, WhipMilkCocoaPosition.x, WhipMilkCocoaPosition.y, WHITE);
        DrawTexture(WhipCTea, WhipCTeaPosition.x, WhipCTeaPosition.y, WHITE);
        DrawTexture(WhipCCocoa, WhipCCocoaPosition.x, WhipCCocoaPosition.y, WHITE);

        DrawTexture(MarshMilkTea, MarshMilkTeaPosition.x, MarshMilkTeaPosition.y, WHITE);
        DrawTexture(MarshMilkCocoa, MarshMilkCocoaPosition.x, MarshMilkCocoaPosition.y, WHITE);
        DrawTexture(MarshCTea, MarshCTeaPosition.x, MarshCTeaPosition.y, WHITE);
        DrawTexture(MarshCCocoa, MarshCCocoaPosition.x, MarshCCocoaPosition.y, WHITE);
        
        DrawTexture(CrmWhipMilkTea, CrmWhipMilkTeaPosition.x, CrmWhipMilkTeaPosition.y, WHITE);
        DrawTexture(CrmWhipMilkCocoa, CrmWhipMilkCocoaPosition.x, CrmWhipMilkCocoaPosition.y, WHITE);
        DrawTexture(CrmWhipCTea, CrmWhipCTeaPosition.x, CrmWhipCTeaPosition.y, WHITE);
        DrawTexture(CrmWhipCCocoa, CrmWhipCCocoaPosition.x, CrmWhipCCocoaPosition.y, WHITE);

        DrawTexture(CrmMarshMilkTea, CrmMarshMilkTeaPosition.x, CrmMarshMilkTeaPosition.y, WHITE);
        DrawTexture(CrmMarshMilkCocoa, CrmMarshMilkCocoaPosition.x, CrmMarshMilkCocoaPosition.y, WHITE);
        DrawTexture(CrmMarshCTea, CrmMarshCTeaPosition.x, CrmMarshCTeaPosition.y, WHITE);
        DrawTexture(CrmMarshCCocoa, CrmMarshCCocoaPosition.x, CrmMarshCCocoaPosition.y, WHITE);

        DrawTexture(ChocWhipMilkTea, ChocWhipMilkTeaPosition.x, ChocWhipMilkTeaPosition.y, WHITE);
        DrawTexture(ChocWhipMilkCocoa, ChocWhipMilkCocoaPosition.x, ChocWhipMilkCocoaPosition.y, WHITE);
        DrawTexture(ChocWhipCTea, ChocWhipCTeaPosition.x, ChocWhipCTeaPosition.y, WHITE);
        DrawTexture(ChocWhipCCocoa, ChocWhipCCocoaPosition.x, ChocWhipCCocoaPosition.y, WHITE);

        DrawTexture(ChocMarshMilkTea, ChocMarshMilkTeaPosition.x, ChocMarshMilkTeaPosition.y, WHITE);
        DrawTexture(ChocMarshMilkCocoa, ChocMarshMilkCocoaPosition.x, ChocMarshMilkCocoaPosition.y, WHITE);
        DrawTexture(ChocMarshCTea, ChocMarshCTeaPosition.x, ChocMarshCTeaPosition.y, WHITE);
        DrawTexture(ChocMarshCCocoa, ChocMarshCCocoaPosition.x, ChocMarshCCocoaPosition.y, WHITE);
            
        const char* text = "It works :3";
        const Vector2 text_size = MeasureTextEx(GetFontDefault(), text, 20, 1);
        DrawText(text, SCREEN_WIDTH / 2 - text_size.x / 2, texture_y + texture.height + text_size.y + 10, 20, BLACK);

        EndDrawing();
    }

    CloseWindow();

    return 0;
}

