#include "../include/BearGame.hpp"

#include <c64/joystick.h>

#include "../include/BearGame.hpp"
#include "../include/defines.hpp"

BearGame::BearGame() {
    this->frameClock = 0;
    this->level = 1;
    this->score = Score();
    this->bearSprite = new BearSprite();
    this->playState = PlayState::GET_USER_INPUT;
    this->gameState = GameState::SETUP;

    this->joyDirection = JoyDirection(JoyDirectionX::NONE, JoyDirectionY::NONE);

    // May need a separate object for the charWin
    this->charWin = new CharWin();
    cwin_init(
        this->charWin,
        (char *)ScreenAddr,
        0,
        0,
        ScreenWidthChars,
        ScreenHeightChars
    );
}

void BearGame::setup() {
    this->bearSprite->drawSprite();
}

int BearGame::getLevel() {
    return this->level;
}

int BearGame::getScore() {
    return this->score.getScore();
}

/// @brief Main in-game loop
///        Handles input, updates game variables, and renders the game
///        as well as checking for game over or game won conditions
void BearGame::play() {
    // Check the raster line to see if we need to advance the clock
    if (vic.raster == 250) {
        // Advance the clock, but only once per frame
        this->frameClock = (this->frameClock + 1) % 60;
    }

    switch (this->playState) {
        case PlayState::GET_USER_INPUT:
            // Check for user input
            this->getUserInput();
            this->playState = PlayState::UPDATE_GAME;
            break;
        case PlayState::UPDATE_GAME:
            // Update the game
            this->updateGame();
            this->playState = PlayState::RENDER_GAME;
            break;
        case PlayState::RENDER_GAME:
            // Render the game
            this->renderGame();
            this->playState = PlayState::GET_USER_INPUT;
            break;
        case PlayState::END_GAME:
            // Game over
            this->gameOver();
            break;
        case PlayState::WON_GAME:
            // Game won
            this->gameWon();
            break;
        default:
            this->playState = PlayState::GET_USER_INPUT;
            break;
    }
}

int BearGame::getFrameClock() {
    return this->frameClock;
}

void BearGame::renderGame() {
    // Render the game - this happens automatically, but we can change RAM locations
    // Update the sprite position
    this->bearSprite->render();
}

/// @brief Get the user input from the joystick
///        and update the joyDirection object
///        with the current direction of the joystick
void BearGame::getUserInput() {
    // Poll the joystick, port 2
    joy_poll((char)JoyStickPort::PORT_2);
    int joyValueX, joyValueY;
    switch (joyx[(char)JoyStickPort::PORT_2]) {
        case -1:
            joyValueX = (int)JoyDirectionX::LEFT;
            break;
        case 1:
            joyValueX = (int)JoyDirectionX::RIGHT;
            break;
        default:
            joyValueX = (int)JoyDirectionX::NONE;
            break;
    }

    switch (joyy[(char)JoyStickPort::PORT_2]) {
        case -1:
            joyValueY = (int)JoyDirectionY::UP;
            break;
        case 1:
            joyValueY = (int)JoyDirectionY::DOWN;
            break;
        default:
            joyValueY = (int)JoyDirectionY::NONE;
            break;
    }

    this->joyDirection.setJoyDirection(
        (JoyDirectionX)joyValueX,
        (JoyDirectionY)joyValueY
    );
}

void BearGame::updateBearSpritePosition() {
    // Update the sprite position
    int *bearPos = this->bearSprite->getPos();
    int x = bearPos[0];
    int y = bearPos[1];
    int bearSpeed = 1;
    switch (this->joyDirection.getJoyDirectionX()) {
        case JoyDirectionX::LEFT:
            if (x - bearSpeed >= ScreenLeftBrdPos) {
                x -= bearSpeed;
            }
            break;
        case JoyDirectionX::RIGHT:
            if (x + bearSpeed <= ScreenRightBrdPos) {
                x += bearSpeed;
            }
            break;
        default:
            break;
    }

    switch (this->joyDirection.getJoyDirectionY()) {
        case JoyDirectionY::UP:
            if (y - bearSpeed >= ScreenTopBrdPos) {
                y -= bearSpeed;
            }
            break;
        case JoyDirectionY::DOWN:
            if (y + bearSpeed <= ScreenBottomBrdPos) {
                y += bearSpeed;
            }
            break;
        default:
            break;
    }

    this->bearSprite->move(x, y);
}

void BearGame::updateGame() {
    // Update the game
    // Update the sprite position
    this->updateBearSpritePosition();

    // Check for collisions
    // TODO: Need to implement collision detection

    // Update the score
    if (this->frameClock % 60 == 0) {
        // TODO: This still doesn't work - need to fix. Turned off for now 
        //this->score.updateScore(this->score.getScoreTypes()[0]);
    }
    // Check for game over or game won conditions
    // TODO: Need to implement game over and game won conditions
}

// void BearGame::renderGame() {
//     // Render the game - this happens automatically, but we can change RAM locations
//     // Update the sprite position
//     this->bearSprite->render();
// }

void BearGame::gameOver() {
    // TODO: Game over
}

void BearGame::gameWon() {
    // Game won
    // TODO: Game won
}

void BearGame::setGameState(GameState gameState) {
    this->gameState = gameState;
}

GameState BearGame::getGameState() {
    return this->gameState;
}

void BearGame::setPlayState(PlayState playState) {
    this->playState = playState;
}

PlayState BearGame::getPlayState() {
    return this->playState;
}

BearSprite *BearGame::getBearSprite() {
    return this->bearSprite;
}

BearGame::~BearGame() {
    // Destructor - nothing to do here
}