#include "cocos2d.h"
#include "entityx/entityx.h"
#include <systems/RenderSystem.h>

#ifndef MYGAME_ENTITYENGINE_H
#define MYGAME_ENTITYENGINE_H

namespace ex = entityx;

class EntityEngine : public ex::EntityX {
    explicit EntityEngine() {
        systems.add<RenderSystem>();
        systems.configure();
    }
public:

    void update(ex::TimeDelta);
};

#endif //MYGAME_ENTITYENGINE_H
