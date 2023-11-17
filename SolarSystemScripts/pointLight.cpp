#include "pointLight.h"

PointLight::PointLight(glm::vec3 position_ ,glm::vec3 color_, float power_)
    :position(position_), color(color_), power(power_) {
}


void PointLight::Bind(Shader *shader)
{
    shader->setUniform3fv("PointLightPosition", position);
    shader->setUniform3fv("PointLightColor", color);
    shader->setUniform1f("PointLightPower", power);
}


