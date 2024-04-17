#ifndef DEFINES
#define DEFINES

#pragma once

// Sprite memory address
#define SpriteAddr             0x0380

// Sprite data
#define SpriteData    ((char *)SpriteAddr)

// Sprite width (in pixels)
#define SpriteWidth             24

// Sprite height (in pixels)
#define SpriteHeight            21

// Screen memory address
#define ScreenAddr             0x0400

// Screen width (in characters)
#define ScreenWidthChars       40

// Screen height (in characters)
#define ScreenHeightChars      25

// Screen width (in pixels)
#define ScreenWidth            320

// Screen height (in pixels)
#define ScreenHeight           200

// Screen character width (in pixels)
#define ScreenCharWidth        8

// Screen character height (in pixels)
#define ScreenCharHeight       8

// Screen left border X position (in pixels)
#define ScreenLeftBrdPos       24

// Screen top border Y position (in pixels)
#define ScreenTopBrdPos        48

// Screen right border X position (in pixels)
#define ScreenRightBrdPos      ScreenWidth

// Screen bottom border Y position (in pixels)
#define ScreenBottomBrdPos     ScreenHeight + (SpriteHeight * 1.5)

#endif /* DEFINES */
