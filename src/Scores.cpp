#include "../include/Scores.hpp"

Score::Score() {
    this->totalScore = 0;
    this->scoreTypes = new ScoreType[1];
    ScoreType achieve = ScoreType(true, false, 100, "Got off screen!?!"); // 100 points for getting off screen
    this->scoreTypes[0] = achieve;
}

void Score::updateScore(ScoreType scoreType) {
    if (scoreType.getIsAchievement()) {
        if (!scoreType.getIsAchieved()) {
            scoreType.setIsAchieved(true);
        } else {
            return;
        }
    }
    this->totalScore += scoreType.getAmount();
}

ScoreType *Score::getScoreTypes() {
    return this->scoreTypes;
}

int Score::getScore() {
    return this->totalScore;
}

Score::~Score() {

}