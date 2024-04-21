#include "../include/ScoreType.hpp"

ScoreType::ScoreType() {
    this->achievement = false;
    this->achieved = false;
    this->amount = 0;
    this->name = "";
}

ScoreType::ScoreType(bool isAchievement, bool isAchieved, int amount, string name) {
    this->setIsAchievement(isAchievement);
    this->setIsAchieved(isAchieved);
    this->amount = amount;
    this->name = name;
}

bool ScoreType::isAchievement() {
    return this->achievement;
}

void ScoreType::setIsAchievement(bool isAchievement) {
    this->achievement = isAchievement;
}

bool ScoreType::isAchieved() {
    return this->achieved;
}

void ScoreType::setIsAchieved(bool isAchieved) {
    this->achieved = isAchieved;
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