#ifndef CAMERA_H
#define CAMERA_H

#include "shader.h"
#include "glm/glm.hpp"

class Camera
{
private:
    float FoV;
    glm::mat4 viewMatrix;
    glm::mat4 projectionMatrix;

public:
    Camera(float m_Width, float m_Height);
    ~Camera();

    void computeMatrices(float m_Width, float m_Height);
    glm::mat4 getViewMatrix() const;
    glm::mat4 getProjectionMatrix() const;
    void setFoV(float a);
    void Bind(Shader *shader) const;

    glm::vec3 position;
    float horizontalAngle;
    float verticalAngle;
};

#endif // CAMERA_H
