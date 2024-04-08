#include "../include/ScoreType.hpp"

ScoreType::ScoreType() {
    this->isAchievement = false;
    this->isAchieved = false;
    this->amount = 0;
    this->name = "";
}

ScoreType::ScoreType(bool isAchievement, bool isAchieved, int amount, string name) {
    this->isAchievement = isAchievement;
    this->isAchieved = isAchieved;
    this->amount = amount;
    this->name = name;
}

bool ScoreType::getIsAchievement() {
    return this->isAchievement;
}

void ScoreType::setIsAchievement(bool isAchievement) {
    this->isAchievement = isAchievement;
}

bool ScoreType::getIsAchieved() {
    return this->isAchieved;
}

void ScoreType::setIsAchieved(bool isAchieved) {
    this->isAchieved = isAchieved;
}

int ScoreType::getAmount() {
    return this->amount;
}

void ScoreType::setAmount(int amount) {
    this->amount = amount;
}

string ScoreType::getName() {
    return this->name;
}

void ScoreType::setName(string name) {
    this->name = name;
}

ScoreType::~ScoreType() {

}