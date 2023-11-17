#ifndef PLANETE_H
#define PLANETE_H

#include "object.h"
#include "camera.h"

class Planete : public Object
{
public:
    Planete(const char *path, std::string texturePath, double semiMajorAxis, double eccentricity_mercury, double angularVelocity_mercury, double scale=1.0);
    glm::mat4 getModelViewProjectionMatrix(const Camera& camera);
    void updatePosition(double time);

private:
    double semiMajorAxis;
    double eccentricity;
    double angularVelocity;
    double scale;
};

#endif // PLANETE_H



