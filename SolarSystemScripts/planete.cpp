#include "planete.h"
#include "camera.h"

Planete::Planete(const char *path, std::string texturePath, double semiMajorAxis_, double eccentricity_, double angularVelocity_, double scale_)
    : Object(path, texturePath, scale_), semiMajorAxis(semiMajorAxis_), eccentricity(eccentricity_), angularVelocity(angularVelocity_) {
//    semiMajorAxis = semiMajorAxis_*2;
    eccentricity = eccentricity_*1;
    angularVelocity= angularVelocity_*1;
    scale = scale_*pow(10,-4);
}


glm::mat4 Planete::getModelViewProjectionMatrix(const Camera& camera) {
    glm::mat4 modelMatrix = getModelMatrix();
    glm::mat4 viewMatrix = camera.getViewMatrix();
    glm::mat4 projectionMatrix = camera.getProjectionMatrix();
    return projectionMatrix * viewMatrix * modelMatrix;
}


void Planete::updatePosition(double time) {
    // Calculs pour mettre à jour la position en fonction du temps
    double theta = angularVelocity * time;
    double r = semiMajorAxis * (1 - eccentricity * eccentricity) / (1 + eccentricity * cos(theta));
    double x = r * cos(theta);
    double z = r * sin(theta);
    position = glm::vec3(x, 0, z);
}



