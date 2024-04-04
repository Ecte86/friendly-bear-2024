#ifndef BEARSPRITE_HPP
#define BEARSPRITE_HPP

#pragma once

#include <c64/sprites.h>
#include <c64/types.h>
#include <c64/vic.h>
#include <string.h>

// IGNORENEXTLINE
#include "spriteData/bear.hpp"  //NOLINT
#include "SpritePosition.hpp"
class BearSprite {
  private:
    byte *spriteData;
    const byte *spriteAddr;
    const byte *spriteAddr_2;
    const byte *screenAddr;
    SpritePosition *position;
  public:
    BearSprite();
    void setupSprite();
    ~BearSprite();
};

#endif