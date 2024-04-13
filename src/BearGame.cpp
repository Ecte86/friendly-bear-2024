#include <c64/joystick.h>

#include "../include/defines.hpp"
#include "../include/BearGame.hpp"
#include "../include/BearGame.hpp"

BearGame::BearGame() {
    this->level = 1;
    this->score = Score();
    this->bearSprite = new BearSprite();
    this->playState = PlayState::GET_USER_INPUT;
    this->gameState = GameState::SETUP;

    this->joyDirection = JoyDirection(JoyDirectionX::NONE, JoyDirectionY::NONE);
    
    // May need a separate object for the charWin
    this->charWin = new CharWin();
    cwin_init(this->charWin, (char *)ScreenAddr, 0, 0, ScreenWidth, ScreenHeight);
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

void BearGame::play() {
    // TODO: Play the game
    // This is where we will run the game loop
    // We will check for user input, update the game state, and render the game
    // We will also check for collisions, and update the score
    // We will also check for game over or game won conditions
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
        default:
            this->playState = PlayState::GET_USER_INPUT;
            break;
    }
}

void BearGame::renderGame() {
    // Render the game - this happens automatically, but we can change RAM locations
    // Update the sprite position
    this->bearSprite->render();

}

void BearGame::getUserInput() {
    // Get joystick input X
    // Get joystick input Y

    // Poll the joystick
    joy_poll(0);
    int joyValueX, joyValueY;
    switch (joyx[0]) {
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

    switch (joyy[0]) {
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

    this->joyDirection.setJoyDirection((JoyDirectionX)joyValueX, (JoyDirectionY)joyValueY);
}

void BearGame::updateGame() {
    // Update the game 


    // Check for collisions
    // TODO: Need to implement collision detection

    // Update the score
    if (this->bearSprite->getX() < 0 || this->bearSprite->getX() > 320 || this->bearSprite->getY() < 0 || this->bearSprite->getY() > 200) {
        this->score.updateScore(this->score.getScoreTypes()[0]);
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

BearGame::~BearGame() {
    // Destructor - nothing to do here
}