#include "../include/JoyDirection.hpp"

JoyDirection::JoyDirection() {
    this->joyX = JoyDirectionX::NONE;
    this->joyY = JoyDirectionY::NONE;
}

JoyDirection::JoyDirection(JoyDirectionX joyX, JoyDirectionY joyY) {
    this->joyX = joyX;
    this->joyY = joyY;
}

JoyDirection JoyDirection::getJoyDirection() {
    return *this;
}

void JoyDirection::setJoyDirection(JoyDirectionX joyX, JoyDirectionY joyY) {
    this->joyX = joyX;
    this->joyY = joyY;
}

JoyDirectionX JoyDirection::getJoyDirectionX() {
    return this->joyX;
}

void JoyDirection::setJoyDirectionX(JoyDirectionX joyX) {
    this->joyX = joyX;
}

JoyDirectionY JoyDirection::getJoyDirectionY() {
    return this->joyY;
}

void JoyDirection::setJoyDirectionY(JoyDirectionY joyY) {
    this->joyY = joyY;
}

JoyDirection::~JoyDirection() {

}