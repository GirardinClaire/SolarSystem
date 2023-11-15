#include "planete.h"
#include "camera.h"

Planete::Planete(const char *path, std::string texturePath, double semiMajorAxis_, double eccentricity_, double angularVelocity_)
    : Object(path, texturePath), semiMajorAxis(semiMajorAxis_*3), eccentricity(eccentricity_), angularVelocity(angularVelocity_)
{
}

void Planete::updatePosition(double time) {
    // Calculs pour mettre à jour la position en fonction du temps
    double theta = angularVelocity * time;
    double r = semiMajorAxis * (1 - eccentricity * eccentricity) / (1 + eccentricity * cos(theta));
    double x = r * cos(theta);
    double z = r * sin(theta);
    position = glm::vec3(x, r * sin(theta*2), z);
}

glm::mat4 Planete::getModelViewProjectionMatrix(const Camera& camera) {
    glm::mat4 modelMatrix = getModelMatrix();
    glm::mat4 viewMatrix = camera.getViewMatrix();
    glm::mat4 projectionMatrix = camera.getProjectionMatrix();
    return projectionMatrix * viewMatrix * modelMatrix;
}


