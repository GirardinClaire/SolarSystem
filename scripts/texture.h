#ifndef TEXTURE_H
#define TEXTURE_H

#include <iostream>


class Texture
{
private:
    unsigned int m_rendererID;
    std::string m_FilePath;
    unsigned char* m_LocalBuffer;
    int m_BPP, m_Width, m_Height;

public:
    Texture(const std::string &path);
    ~Texture();
    void Bind(unsigned int slot = 0) const;
    void Unbind() const;
    int GetWidth() { return m_Width; }
    int GetHeight() { return m_Height; }
};

#endif // TEXTURE_H
