#ifndef PLANETE_H
#define PLANETE_H

#include "object.h"
#include "camera.h"

class Planete : public Object
{
public:
    Planete(const char *path, std::string texturePath, double semiMajorAxis, double eccentricity_mercury, double angularVelocity_mercury);
    void updatePosition(double time);
    glm::mat4 getModelViewProjectionMatrix(const Camera& camera);
private:
    double semiMajorAxis;
    double eccentricity;
    double angularVelocity;

};

#endif // PLANETE_H



