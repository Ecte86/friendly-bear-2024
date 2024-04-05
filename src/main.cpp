#include <opp/iostream.h>
#include <string.h>
#include <c64/sprites.h>
#include <c64/types.h>
#include <c64/vic.h>
#include <conio.h>

using namespace opp;

#include "../include/BearSprite.hpp"

/**
 * This is a puzzle-platformer game where the player controls a bear
 * who must collect food items for his tribe and family while
 * avoiding obstacles.
 * 
 * This is my first proper attempt at creating a game, ever, so
 * my plan is to get one level working and then build on that.
*/

int main(void) {
    BearSprite fb;
    fb.setupSprite();

    return 0;
}