#ifndef MYGAME_RENDERABLE_H
#define MYGAME_RENDERABLE_H

#include "cocos2d.h"

USING_NS_CC;

struct Sprited {
    explicit Sprited(Sprite* node) : sprite(node) {}
    Sprite* sprite;
};

#endif //MYGAME_RENDERABLE_H
