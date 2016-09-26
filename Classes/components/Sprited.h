#pragma once

#include "cocos2d.h"

USING_NS_CC;

struct Sprited {
    explicit Sprited(Sprite* node) : sprite(node) {}
    Sprite* sprite;
};
