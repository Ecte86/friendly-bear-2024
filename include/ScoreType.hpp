#ifndef SCORETYPE_HPP
#define SCORETYPE_HPP

#pragma once

#include <opp/string.h>

using namespace opp;

class ScoreType {
private:
    bool achievement; // if true, can be achieved only once
    bool achieved;
    int amount;
    string name;
public:
    ScoreType();
    ScoreType(bool isAchievement, bool isAchieved, int amount, string name);

    bool isAchievement();
    void setIsAchievement(bool isAchievement);

    bool isAchieved();
    void setIsAchieved(bool isAchieved);

    int getAmount();
    void setAmount(int amount);   

    string getName();
    void setName(string name);

    ~ScoreType();
};

#endif