#include <iostream>
#include <GL/glew.h>
#include <GLFW/glfw3.h>
// #include "glm/glm.hpp"
#include <vector>
#include <cmath> // Inclure la bibliothèque mathématique pour pow()

// #include "vertexbuffer.h"
#include "vertexarray.h"
#include "shader.h"
#include "renderer.h"
#include "camera.h"
#include "navigationcontrols.h"
#include "planete.h"


using namespace std;



int main()
{
    //string path = "/home/formation/Documents/TSIGirardinClaire/OpenGL/SolarSystem/SolarSystemScripts";
    string path = "/Users/ClaireGirardin/Documents/ING3/TSI/OpenGL/SolarSystem/SolarSystemScripts";

    /////////////////////////Initialisation de GLFW/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    if(!glfwInit()){
        fprintf(stderr, "Failed to initialize GLFW\n");
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4); //antialiasing
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3); //version 3.3
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE); //version core
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);


    /////////////////////////Ouverture de la fenêtre/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //définition de la taille de la fenêtre
    int width=600;
    int height=600;

    //On récupère les dimensions de l'écran pour créer la fenètre
    GLFWmonitor* primary = glfwGetPrimaryMonitor();
    glfwGetMonitorWorkarea(primary,nullptr,nullptr, &width, &height);

    //Enfin on crée la fenêtre
    GLFWwindow* window = glfwCreateWindow(width,height,"OpenGL_API",nullptr,nullptr);
    glfwSwapInterval(1);
    //On vérifie que l'initialisation a bien marché
    if (window==nullptr){
        fprintf(stderr, "Erreur lors de la création de la fénêtre\n");
        glfwTerminate();
        return -1;
    }

    int major, minor;
    glfwGetVersion(&major, &minor, nullptr);
    if (major < 3 || (major == 3 && minor < 3)) {
        std::cout << "Votre système ne prend pas en charge OpenGL 3.3 ou supérieur." << std::endl;
            glfwTerminate(); // Assurez-vous de quitter GLFW correctement
        return -1;
    }

    if (glfwGetWindowAttrib(window, GLFW_CONTEXT_VERSION_MAJOR) < 3) {
        std::cout << "Contexte OpenGL avec une version inférieure à 3." << std::endl;
        // Gérez l'erreur ou quittez l'application
    }

    //Enfin on définit la fenêtre créée comme la fenêtre sur laquelle on va dessiner
    glfwMakeContextCurrent(window);

    /////////////////////////Initialisation de GLEW//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //Initialisation de GLEW
    glewExperimental=GL_TRUE;
    if (glewInit() != GLEW_OK){
        fprintf(stderr, "Erreur lors de l'initialisation de GLEW\n");
        return -1;
    }

    /////////////////////////On crée un Renderer/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Renderer renderer;

    /////////////////////////On crée un Shader///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Shader shader(path+"/shaders/SimpleVertexShader.vertexshader", path+"/shaders/SimpleFragmentShader.fragmentshader");
    shader.Bind();

    /////////////////////////On crée un vertex array/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    VertexArray vArray;
    vArray.Bind();

    /////////////////////////On crée la camera et les contrôles/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    Camera camera(width, height);
    camera.setFoV(90);
    camera.position = glm::vec3(-20., 10., 0.);
    camera.horizontalAngle = M_PI/2;
    camera.verticalAngle = 12.0;
    camera.computeMatrices(width, height);

    NavigationControls controls(window, &camera);

    /////////////////////////Création des formes à afficher//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //////////// Soleil ////////////
    Planete sun((path+"/obj/planete.obj").c_str(), path+ "/textures/sun.jpg", 0., 0., 0.);
    sun.updatePosition(0); // Mettre à jour la position en fonction du temps: initialisation à t0 = 0
    sun.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_sun = sun.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_sun);

    //////////// Planète mercury ////////////
    Planete mercury((path+"/obj/planete.obj").c_str(), path+ "/textures/mercury.jpg", 0.39, 0.206, 1.24);
    mercury.updatePosition(0);
    mercury.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_mercury = mercury.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_mercury);

    //////////// Planète venus ////////////
    Planete venus((path+"/obj/planete.obj").c_str(), path+ "/textures/venus.jpg", 0.72, 0.007, 0.62);
    venus.updatePosition(0);
    venus.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_venus = venus.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_venus);

    //////////// Planète earth ////////////
    Planete earth((path+"/obj/planete.obj").c_str(), path+ "/textures/earth.jpg", 1.00, 0.017, 1.00);
    earth.updatePosition(0);
    earth.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_earth = earth.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_earth);

//    //////////// Planète Moon ////////////
//    Planete moon((path+"/obj/planete.obj").c_str(), path+ "/textures/moon.jpg", *10, , );
//    moon.updatePosition(0);
//    moon.rotationAngles = glm::vec3(0, 0, 0);
//    glm::mat4 MVP_moon = moon.getModelViewProjectionMatrix(camera);
//    shader.setUniformMat4f("MVP", MVP_moon);

    //////////// Planète mars ////////////
    Planete mars((path+"/obj/planete.obj").c_str(), path+ "/textures/mars.jpg", 1.52, 0.093, 0.52);
    mars.updatePosition(0);
    mars.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_mars = mars.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_mars);

    //////////// Planète jupiter ////////////
    Planete jupiter((path+"/obj/planete.obj").c_str(), path+ "/textures/jupiter.jpg", 5.20, 0.049, 0.08);
    jupiter.updatePosition(0);
    jupiter.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_jupiter = jupiter.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_jupiter);

    //////////// Planète saturn ////////////
    Planete saturn((path+"/obj/planete.obj").c_str(), path+ "/textures/saturn.jpg", 9.58, 0.057, 0.03);
    saturn.updatePosition(0);
    saturn.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_saturn = saturn.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_saturn);

    //////////// Planète uranus ////////////
    Planete uranus((path+"/obj/planete.obj").c_str(), path+ "/textures/uranus.jpg", 19.22, 0.046, 0.01);
    uranus.updatePosition(0);
    uranus.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_uranus = uranus.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_uranus);

    //////////// Planète neptune ////////////
    Planete neptune((path+"/obj/planete.obj").c_str(), path+ "/textures/neptune.jpg", 30.05, 0.010, 0.01);
    neptune.updatePosition(0);
    neptune.rotationAngles = glm::vec3(0, 0, 0);
    glm::mat4 MVP_neptune = neptune.getModelViewProjectionMatrix(camera);
    shader.setUniformMat4f("MVP", MVP_neptune);




    /////////////////////////Boucle de rendu/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Activation du culling : Cull triangles which normal is not towards the camera
    glEnable(GL_CULL_FACE);

    // Assure que l'on peut capturer les touche de clavier
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

    //On indique la couleur de fond
    glClearColor(1.0f, 1.0f, 1.0f, 1.0f);

    //On autorise les tests de profondeur
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    float lastTime = glfwGetTime();
    float currentTime, deltaTime;

    // Boucle de rendu
    while(glfwGetKey(window, GLFW_KEY_ESCAPE) != GLFW_PRESS && !glfwWindowShouldClose(window)){

        // Permet de bouger la caméra
        currentTime = glfwGetTime();
        deltaTime = currentTime-lastTime;
        lastTime = currentTime;
        sun.rotationAngles.y=currentTime;
        controls.update(deltaTime, &shader);
        camera.computeMatrices(width, height);

        // Effacez l'image précédente une seule fois en dehors de la boucle de rendu
        renderer.Clear();

        // Soleil
        sun.updatePosition(0); // car le soleil ne bouge pas
        sun.rotationAngles = glm::vec3(0, 0, 0);
        MVP_sun = sun.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_sun);
        renderer.Draw(vArray, sun, shader); // vider les buffers

        // Planète mercury
        mercury.updatePosition(currentTime);
        mercury.rotationAngles = glm::vec3(0, 0, 0);
        MVP_mercury = mercury.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_mercury);
        renderer.Draw(vArray, mercury, shader);

        // Planète venus
        venus.updatePosition(currentTime);
        venus.rotationAngles = glm::vec3(0, 0, 0);
        MVP_venus = venus.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_venus);
        renderer.Draw(vArray, venus, shader);

        // Planète earth
        earth.updatePosition(currentTime);
        earth.rotationAngles = glm::vec3(0, 0, 0);
        MVP_earth = earth.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_earth);
        renderer.Draw(vArray, earth, shader);

        // Moon

        // Planète mars
        mars.updatePosition(currentTime);
        mars.rotationAngles = glm::vec3(0, 0, 0);
        MVP_mars = mars.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_mars);
        renderer.Draw(vArray, mars, shader);

        // Planète jupiter
        jupiter.updatePosition(currentTime);
        jupiter.rotationAngles = glm::vec3(0, 0, 0);
        MVP_jupiter = jupiter.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_jupiter);
        renderer.Draw(vArray, jupiter, shader);

        // Planète saturn
        saturn.updatePosition(currentTime);
        saturn.rotationAngles = glm::vec3(0, 0, 0);
        MVP_saturn = saturn.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_saturn);
        renderer.Draw(vArray, saturn, shader);

        // Planète uranus
        uranus.updatePosition(currentTime);
        uranus.rotationAngles = glm::vec3(0, 0, 0);
        MVP_uranus = uranus.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_uranus);
        renderer.Draw(vArray, uranus, shader);

        // Planète neptune
        neptune.updatePosition(currentTime);
        neptune.rotationAngles = glm::vec3(0, 0, 0);
        MVP_neptune = neptune.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP_neptune);
        renderer.Draw(vArray, neptune, shader);


        ////////////////Partie rafraichissement de l'image et des évènements///////////////
        //Swap buffers : frame refresh
        glfwSwapBuffers(window);
        //get the events
        glfwPollEvents();

    }

    // Nettoyage
    glfwTerminate();

    return 0;
}
