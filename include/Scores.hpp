#ifndef SCORES
#define SCORES

#pragma once

#include "ScoreType.hpp"

class Score {
private:
    ScoreType *scoreTypes;
    int totalScore;    
public:
    Score();
    void updateScore(ScoreType scoreType);
    ScoreType *getScoreTypes();
    int getScore();
    ~Score();
};

#endif /* SCORES */
