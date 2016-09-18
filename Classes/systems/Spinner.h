#ifndef MYGAME_MOVER_H
#define MYGAME_MOVER_H

#include <components/Body.h>
#include "entityx/entityx.h"

namespace ex = entityx;

class Spinner : public ex::System<Spinner> {
public:
    void update(ex::EntityManager &es, ex::EventManager &events, ex::TimeDelta dt) override;

};


#endif //MYGAME_MOVER_H
