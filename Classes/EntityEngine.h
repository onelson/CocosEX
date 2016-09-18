#include "cocos2d.h"
#include "entityx/entityx.h"
#include <systems/RenderSystem.h>

#ifndef MYGAME_ENTITYENGINE_H
#define MYGAME_ENTITYENGINE_H

namespace ex = entityx;

class EntityEngine : public ex::EntityX {
public:
    explicit EntityEngine() {
        systems.add<RenderSystem>();
        systems.configure();
    }
    void update(ex::TimeDelta);
};

#endif //MYGAME_ENTITYENGINE_H
