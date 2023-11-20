#include "camera.h"
#include "math.h"
#include "glm/gtx/transform.hpp"

Camera::Camera(float m_Width, float m_Height)
{
    computeMatrices(m_Width, m_Height);
}

Camera::~Camera()
{

}

void Camera::computeMatrices(float m_Width, float m_Height)
{
    glm::vec3 directionVector(cos(verticalAngle)*sin(horizontalAngle),
                        sin(verticalAngle),
                        cos(verticalAngle)*cos(horizontalAngle));
    glm::vec3 right(sin(horizontalAngle-M_PI/2),
                    0,
                    cos(horizontalAngle-M_PI/2));
    glm::vec3 upVector = glm::cross(right, directionVector);

    viewMatrix = glm::lookAt(position, position+directionVector, upVector);

    projectionMatrix = glm::perspective(glm::radians(FoV), m_Width/m_Height, 0.1f, 100.0f);
}

glm::mat4 Camera::getViewMatrix() const
{
    return viewMatrix;
}

glm::mat4 Camera::getProjectionMatrix() const
{
    return projectionMatrix;
}

void Camera::setFoV(float a)
{
    FoV = a;
}

void Camera::Bind(Shader *shader) const
{
    shader->setUniform3fv("camPosition", position);
}

