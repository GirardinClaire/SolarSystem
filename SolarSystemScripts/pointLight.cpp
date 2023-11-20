#include "pointLight.h"

PointLight::PointLight(glm::vec3 position_ ,glm::vec3 color_, float power_, float reflectivity_)
    :position(position_), color(color_), power(power_), reflectivity(reflectivity_){
}


void PointLight::Bind(Shader *shader)
{
    shader->setUniform3fv("LightPosition", position);
    shader->setUniform3fv("lightColor", color);
    shader->setUniform1f("lightPower", power);
    shader->setUniform1f("reflectivity", reflectivity);
}


