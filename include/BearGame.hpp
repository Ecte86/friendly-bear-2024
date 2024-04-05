#ifndef BEARGAME_HPP
#define BEARGAME_HPP

#pragma once

#include "GameState.hpp"
#include "BearSprite.hpp"

class BearGame
{
private:
    GameState gameState;
    PlayState playState;
    BearSprite *bearSprite;
    int level;
    int score;  // 10 points for food item. 100 points for going off screen (secret!)
public:
    BearGame();

    void setup();
    void play();
    void gameOver();
    void gameWon();
    void setGameState(GameState gameState);
    GameState getGameState();
    void setPlayState(PlayState playState);
    PlayState getPlayState();

    ~BearGame();

};

#endif