#ifndef JOYDIRECTION_HPP
#define JOYDIRECTION_HPP

#pragma once

enum class JoyDirectionX {
    LEFT = -1,
    NONE = 0,
    RIGHT = 1,
};

enum class JoyDirectionY {
    UP = -1,
    NONE = 0,
    DOWN = 1,
};

class JoyDirection {
private:
    JoyDirectionX joyX;
    JoyDirectionY joyY;

public:

    JoyDirection();
    JoyDirection(JoyDirectionX joyX, JoyDirectionY joyY);

    JoyDirection getJoyDirection();
    void setJoyDirection(JoyDirectionX joyX, JoyDirectionY joyY);

    JoyDirectionX getJoyDirectionX();
    void setJoyDirectionX(JoyDirectionX joyX);

    JoyDirectionY getJoyDirectionY();
    void setJoyDirectionY(JoyDirectionY joyY);

    ~JoyDirection();
};

#endif