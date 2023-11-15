#ifndef VERTEXARRAY_H
#define VERTEXARRAY_H


class VertexArray
{
private:
    unsigned int m_RendererID;

public:
    VertexArray();
    ~VertexArray();

    void Bind() const;
    void Unbind() const;
};

#endif // VERTEXARRAY_H
