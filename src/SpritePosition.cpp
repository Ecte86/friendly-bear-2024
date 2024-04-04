#include "../include/SpritePosition.hpp"

SpritePosition::SpritePosition(int x, int y) {
    this->x = x;
    this->y = y;
}

void SpritePosition::setX(int x) {
    this->x = x % SCREEN_WIDTH_PIX;
}

void SpritePosition::setY(int y) {
    this->y = y % SCREEN_HEIGHT_PIX;
}

int SpritePosition::getX() {
    return this->x;
}

int SpritePosition::getY() {
    return this->y;
}

SpritePosition::~SpritePosition() {}