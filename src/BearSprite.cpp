#include "../include/BearSprite.hpp"  //NOLINT

BearSprite::BearSprite() {
    this->spriteData =  (byte *)sp_data;
    this->position = new SpritePosition(160, 100);
    this->spriteAddr = (byte *)0x0380;
    this->spriteAddr_2 = this->spriteAddr + 64;
    this->screenAddr = (byte *)0x0400;
}

void BearSprite::setupSprite() {
    memcpy((char *)this->spriteAddr, (char *)this->spriteData, 128);

    spr_init((char *)this->screenAddr);

    this->position = new SpritePosition(160, 100);

    char *spriteAddr_ch = (char *)this->spriteAddr;
    char *spriteAddr_2_ch = (char *)this->spriteAddr_2;
    spr_set(
        0,
        true,
        this->position->getX(),
        this->position->getY(),
        spriteAddr_2_ch[0],
        VCOL_BLACK,
        false,
        false,
        false
    );
    spr_set(
        1,
        true,
        this->position->getX(),
        this->position->getY(),
        spriteAddr_ch[0],
        VCOL_BLACK,
        false,
        false,
        false
    );

    vic.spr_mcolor0 = VCOL_BROWN;
    vic.spr_mcolor1 = VCOL_WHITE;
}

BearSprite::~BearSprite() {}