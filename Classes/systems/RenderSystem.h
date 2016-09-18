#include <components/Sprited.h>
#include <components/Body.h>
#include "entityx/entityx.h"

#ifndef MYGAME_RENDERSYSTEM_H
#define MYGAME_RENDERSYSTEM_H

namespace ex = entityx;

class RenderSystem : public ex::System<RenderSystem> {
public:
    void update(ex::EntityManager &es, ex::EventManager &events, ex::TimeDelta dt) override;

private:
    double last_update = 0.0;
    double frame_count = 0.0;
};



#endif //MYGAME_RENDERSYSTEM_H
