#include "EntityEngine.h"

void EntityEngine::update(ex::TimeDelta dt) {
    systems.update_all(dt);
}
