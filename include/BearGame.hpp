#ifndef BEARGAME
#define BEARGAME

#pragma once

#include <c64/charwin.h>

#include "BearSprite.hpp"
#include "GameState.hpp"
#include "JoyDirection.hpp"

#include "Scores.hpp"

enum class JoyStickPort {
  PORT_2 = 0,
  PORT_1 = 1
};

class BearGame {
  private:
    byte frameClock;
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

    int getFrameClock();
    
    void updateBearSpritePosition();

    void updateGame();

    void renderGame();

    int getLevel();

    int getScore();

    BearSprite *getBearSprite();

    ~BearGame();
};

#endif /* BEARGAME */
