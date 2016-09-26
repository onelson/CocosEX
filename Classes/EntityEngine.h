#include "cocos2d.h"
#include "entityx/entityx.h"
#include <systems/RenderSystem.h>
#include <systems/Spinner.h>

#pragma once

namespace ex = entityx;

class EntityEngine : public ex::EntityX {
public:
    explicit EntityEngine() {
        systems.add<Spinner>();
        systems.add<RenderSystem>();
        systems.configure();
    }
    void update(ex::TimeDelta);
};
