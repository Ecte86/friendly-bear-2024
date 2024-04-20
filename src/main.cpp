#include <c64/sprites.h>
#include <c64/types.h>
#include <c64/vic.h>
#include <conio.h>
#include <opp/iostream.h>
#include <opp/sstream.h>
#include <opp/string.h>
#include <stdio.h>
#include <string.h>

using namespace opp;

#include "../include/BearGame.hpp"
#include "../include/main.hpp"
#define DEBUG 0

/**
 * This is a puzzle-platformer game where the player controls a bear
 * who must collect food items for his tribe and family while
 * avoiding obstacles.
 * 
 * This is my first proper attempt at creating a game, ever, so
 * my plan is to get one level working and then build on that.
*/

int main(void) {
    BearGame bearGame;
    clrscr();
    iocharmap(IOCHM_PETSCII_2);
#if DEBUG == 1
    char *debugBearPosCStr = new char[40];
    int *bearPos = new int[2];
#endif
    while (true) {
        switch (bearGame.getGameState()) {
            case GameState::SETUP:
                gotoxy(0, 0);
                cout << "SETUP" << endl;
                bearGame.setup();
                bearGame.setGameState(GameState::PLAY);
#if DEBUG == 1
                    coutAt(0, 2, "DEBUG MODE");
#endif
                break;
            case GameState::PLAY:
                gotoxy(0, 0);
                cout << "Level: " << bearGame.getLevel()
                     << " Score: " << bearGame.getScore() << endl;
#if DEBUG == 1
                if (vic.raster == 250
                    && bearGame.getBearSprite()->getPos() != bearPos) {
                    bearPos = bearGame.getBearSprite()->getPos();
                    sprintf(debugBearPosCStr, "Bear X: %d Y: %d", bearPos[0], bearPos[1]);
                    string bearPosStr = "";
                    bearPosStr = debugBearPosCStr;
                    coutAt(0, 3, bearPosStr);
                }
#endif
                bearGame.play();
                break;
            case GameState::GAME_OVER:
                bearGame.gameOver();
                break;
            case GameState::GAME_WON:
                bearGame.gameWon();
                break;
        }
    }
    return 0;
}
