#ifndef BEARGAME
#define BEARGAME

#pragma once

#include <c64/charwin.h>

#include "BearSprite.hpp"
#include "GameState.hpp"
#include "JoyDirection.hpp"

#include "Scores.hpp"

class BearGame {
  private:
    GameState gameState;
    PlayState playState;
    BearSprite *bearSprite;
    int level;
    Score score;  // 10 points for food item. 100 points for going off screen (secret!)
    JoyDirection joyDirection;
    CharWin *charWin;

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

    void getUserInput();

    void updateBearSpritePosition();

    void updateGame();

    void renderGame();

    int getLevel();

    int getScore();

    ~BearGame();
};

#endif /* BEARGAME */
