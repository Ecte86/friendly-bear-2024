#ifndef SPRITEPOSITION_HPP
#define SPRITEPOSITION_HPP

#pragma once

#define SCREEN_WIDTH_PIX 40 * 8
#define SCREEN_HEIGHT_PIX 25 * 8

class SpritePosition {
  private:
    int x;
    int y;

  public:
    SpritePosition(int x = 0, int y = 0);
    void setX(int x);
    void setY(int y);
    int getX();
    int getY();
    ~SpritePosition();
};

#endif