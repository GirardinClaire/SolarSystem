#ifndef POINTLIGHT_H
#define POINTLIGHT_H

#include <string>
#include <glm/glm.hpp>
#include "shader.h"

class PointLight
{
public:
    PointLight(glm::vec3 position ,glm::vec3 color ,float power);
    void Bind(Shader *shader);
    void unBind();


    glm::vec3 position;
    glm::vec3 color;
    float power;


};

#endif // POINTLIGHT_H


