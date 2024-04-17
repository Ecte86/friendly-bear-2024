#ifndef GAMESTATE_HPP
#define GAMESTATE_HPP

#pragma once

enum class GameState {
    SETUP,
    PLAY,
    GAME_OVER,
    GAME_WON
};

enum class PlayState {
    START,
    GET_USER_INPUT,
    UPDATE_GAME,
    RENDER_GAME,
    END_GAME,
    WON_GAME
};

#endif /* GAMESTATE_HPP */
