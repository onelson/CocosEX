#include "Spinner.h"

void Spinner::update(ex::EntityManager &es, ex::EventManager &events, ex::TimeDelta dt) {
    es.each<Body>([this](ex::Entity entity, Body &body) {
        body.rotation += rand() % 50;
    });
}
