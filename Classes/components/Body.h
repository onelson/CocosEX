#ifndef MYGAME_BODY_H
#define MYGAME_BODY_H

#include "cocos2d.h"

USING_NS_CC;

struct Body {
    Body(const Vec2 &position, float rotationd = 0.0) : position(position), rotationd(rotationd) {}

    Vec2 position;
    float rotation = 0.0, rotationd;
};

#endif //MYGAME_BODY_H
