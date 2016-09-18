#include "Spinner.h"

void Spinner::update(ex::EntityManager &es, ex::EventManager &events, ex::TimeDelta dt) {
    es.each<Body>([this](ex::Entity entity, Body &body) {
        int randNum = rand() % (50 - 0 + 1) + 0;
        body.rotation += randNum;
    });
}
