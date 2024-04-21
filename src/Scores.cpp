#include "../include/Scores.hpp"

Score::Score() {
    this->totalScore = 0;
    this->scoreTypes = new ScoreType[1];
    ScoreType achieve = ScoreType(true, false, 100, "Got off screen!?!"); // 100 points for getting off screen
    this->scoreTypes[0] = achieve;
}

void Score::updateScore(ScoreType scoreType) {
    // If the score type is an achievement, check if it has been achieved
    // If it has, return
    // If it hasn't, add the score to the total score,
    // set the score type to achieved, and return
    if (scoreType.isAchievement()) {
        if (scoreType.isAchieved()) {
            return;
        } else {
            this->totalScore += scoreType.getAmount();
            scoreType.setIsAchieved(true);
            return;
        }
    } else {
        // If the score type is not an achievement, add the score to the total score
        this->totalScore += scoreType.getAmount();
    }
}

ScoreType *Score::getScoreTypes() {
    return this->scoreTypes;
}

int Score::getScore() {
    return this->totalScore;
}

Score::~Score() {

}