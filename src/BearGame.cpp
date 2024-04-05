#include "../include/BearGame.hpp"

BearGame::BearGame() {
    this->gameState = GameState::SETUP;
    this->playState = PlayState::GET_USER_INPUT;
}

void BearGame::setup() {
    // TODO: Setup the game
    // This is where we will initialize the game state, level, score, etc.
    // We will also initialize the game sprites, etc.
}

void BearGame::play() {
    // TODO: Play the game
}

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