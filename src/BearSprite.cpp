#include "../include/BearSprite.hpp"  //NOLINT
#include "../include/spriteData/bear.hpp"  //NOLINT
BearSprite::BearSprite() {
    this->spriteData = sp_data;

    this->x = 0;
    this->y = 0;

    this->spriteAddr = SpriteData;
    this->spriteAddr_2 = this->spriteAddr + 64;
    this->screenAddr = (char *)0x0400;
    
}

void BearSprite::drawSprite() {
    memcpy((char *)this->spriteAddr, (char *)this->spriteData, 128);

    spr_init((char *)this->screenAddr);

    this->x = 160;
    this->y = 100;

    int pX = this->x;
    int pY = this->y;

    spr_set(0, true, pX, pY, (SpriteAddr + 64) / 64,  VCOL_BLACK, false, false, false);
    spr_set(1, true, pX, pY,        SpriteAddr / 64, VCOL_ORANGE, true,  false, false);

    vic.spr_mcolor0 = VCOL_BROWN;
    vic.spr_mcolor1 = VCOL_WHITE;
    
    vic.color_border++;
}

int BearSprite::getX() {
    return this->x;
}

int BearSprite::getY() {
    return this->y;
}

void BearSprite::setX(int x) {
    this->x = x;
}

void BearSprite::setY(int y) {
    this->y = y;
}

void BearSprite::move(int x, int y) {
    vic.color_back++;
    this->x = x;
    this->y = y;

    spr_move(0, x, y);
    spr_move(1, x, y);
}

void BearSprite::moveRelative(int x, int y) {
    vic.color_back++;
    this->x += x;
    this->y += y;

    spr_move(0, this->x, this->y);
    spr_move(1, this->x, this->y);
}

void BearSprite::render() {
    spr_move(0, this->x, this->y);
    spr_move(1, this->x, this->y);
}    

BearSprite::~BearSprite() {}