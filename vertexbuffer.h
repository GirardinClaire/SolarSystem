#ifndef VERTEXBUFFER_H
#define VERTEXBUFFER_H

#include <vector>

#include "glm/glm.hpp"


class VertexBuffer
{
private:
    unsigned int m_rendererID;
    unsigned int size;
    unsigned int count;

public:
    VertexBuffer(const std::vector<glm::vec3> &data);
    virtual ~VertexBuffer();

    void Bind(int index) const;
    void Unbind() const;
    unsigned int getSize() const{return size;};
    unsigned int getCount() const {return count;};
};

#endif // VERTEXBUFFER_H
