#ifndef BEARSPRITE_HPP
#define BEARSPRITE_HPP

#pragma once

#include <c64/sprites.h>
#include <c64/types.h>
#include <c64/vic.h>
#include <string.h>

#define SpriteAddr             0x0380
#define SpriteData    ((char *)SpriteAddr)

class BearSprite {
  private:
    char *spriteData;
    char *spriteAddr;
    char *spriteAddr_2;
    char *screenAddr;
    int x;
    int y;
  public:
    BearSprite();
    void drawSprite();
    
    int getX();
    int getY();

    void setX(int x);
    void setY(int y);

    void move(int x, int y);
    void moveRelative(int x, int y);

    void show();
    void hide();

    void render();

    ~BearSprite();
};

#endif /* BEARSPRITE_HPP */
