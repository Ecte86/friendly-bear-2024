#include <c64/sprites.h>
#include <c64/types.h>
#include <c64/vic.h>
#include <conio.h>
#include <opp/iostream.h>
#include <opp/string.h>

using namespace opp;

#include "../include/BearGame.hpp"

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
    while (true) {
        switch (bearGame.getGameState()) {
            case GameState::SETUP:
                gotoxy(0, 0);
                cout << "SETUP" << endl;
                bearGame.setup();
                bearGame.setGameState(GameState::PLAY);
                break;
            case GameState::PLAY:
                gotoxy(0, 0);
                cout << "Level: " << bearGame.getLevel()
                     << " Score: " << bearGame.getScore() << endl;
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