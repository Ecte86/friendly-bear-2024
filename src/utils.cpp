#include <opp/iostream.h>
#include <opp/string.h>
#include <conio.h>

using namespace opp;

#include "../include/utils.hpp"

void coutAt(int x, int y, string str) {
    int oldX = wherex();
    int oldY = wherey();
    gotoxy(x, y);
    bool done = false;
    int idx = 0;
    while (done != true) {
        // clear the line
        putch(' ');
        if (wherex() == 40 || idx == str.size()) {
            done = true;
        }
    };
    gotoxy(x, y);
    cout << str << endl;
    gotoxy(oldX, oldY);
}