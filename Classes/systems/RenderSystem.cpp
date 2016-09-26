#include <components/Sprited.h>
#include <components/Body.h>
#include "RenderSystem.h"

void RenderSystem::update(ex::EntityManager &es, ex::EventManager &events, ex::TimeDelta dt) {
    es.each<Body, Sprited>([this](ex::Entity entity, Body &body, Sprited &renderable) {
        renderable.sprite->setPosition(body.position);
        renderable.sprite->setRotation(body.rotation);
    });

    last_update += dt;
    frame_count++;

    if (last_update >= 0.5) {
        const double fps = frame_count / last_update;
        log("%lu entities (%d fps)", es.size(), static_cast<int>(fps));
        last_update = 0.0;
        frame_count = 0.0;
    }
}