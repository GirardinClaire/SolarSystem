#ifndef OBJECT_H
#define OBJECT_H

#include <iostream>
#include <vector>

#include "vertexbuffer.h"
#include "uvbuffer.h"
#include "texture.h"

using namespace std;


class Object
{
private:
    VertexBuffer *m_vb;
    UVBuffer *m_uvsb;
    Texture *m_texture;
    bool loadOBJ(const char *path, std::vector<glm::vec3> &out_vertices, std::vector<glm::vec2> &out_uvs, std::vector<glm::vec3> &out_normals);
public:
    Object(std::vector< glm::vec3 > vertices, std::vector< glm::vec2 > uvs, std::string texturePath);
    Object(const char *path, std::string texturePath, double scale_);
    ~Object();
    void Bind() const;
    void Unbind() const;
    void Draw() const;
    glm::vec3 position;
    glm::vec3 rotationAngles;
    glm::mat4 getModelMatrix();

};

#endif // OBJECT_H
