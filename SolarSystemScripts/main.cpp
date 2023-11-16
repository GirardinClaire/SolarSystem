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

    //////////// Stars ////////////
    Planete stars((path+"/obj/planete.obj").c_str(), path+ "/textures/stars.jpg", 0., 0., 0., 100.);
    stars.updatePosition(0); // position de l'élément
    stars.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Soleil ////////////
    Planete sun((path+"/obj/planete.obj").c_str(), path+ "/textures/sun.jpg", 0., 0., 0., 0.5);
    sun.updatePosition(0);
    sun.rotationAngles = glm::vec3(0, 0, 0);

    //////////////////////// Planètes ////////////////////////

    //////////// Définition des semiMajorAxis, eccentricity et angularVelocity des différentes planètes ////////////
    std::vector<double> semiMajorAxis_   = {0.390, 0.720, 1.000, 0., 1.520, 5.200, 9.580, 19.22, 30.05};
    std::vector<double> eccentricity_    = {0.206, 0.007, 0.017, 0., 0.093, 0.049, 0.057, 0.046, 0.010};
    std::vector<double> angularVelocity_ = {1.240, 0.620, 1.000, 0., 0.520, 0.080, 0.034, 0.021, 0.011};

    //////////// Planète mercury ////////////
    Planete mercury((path+"/obj/planete.obj").c_str(), path+ "/textures/mercury.jpg", semiMajorAxis_[0], eccentricity_[0], angularVelocity_[0]);
    mercury.updatePosition(0); // Mettre à jour la position en fonction du temps: initialisation à t0 = 0
    mercury.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Planète venus ////////////
    Planete venus((path+"/obj/planete.obj").c_str(), path+ "/textures/venus.jpg", semiMajorAxis_[1], eccentricity_[1], angularVelocity_[1]);
    venus.updatePosition(0);
    venus.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Planète earth ////////////
    Planete earth((path+"/obj/planete.obj").c_str(), path+ "/textures/earth.jpg", semiMajorAxis_[2], eccentricity_[2], angularVelocity_[2]);
    earth.updatePosition(0);
    earth.rotationAngles = glm::vec3(0, 0, 0);

//    //////////// Planète Moon ////////////
//    Planete moon((path+"/obj/planete.obj").c_str(), path+ "/textures/moon.jpg", semiMajorAxis_[3], eccentricity_[3], angularVelocity_[3]);
//    moon.updatePosition(0);
//    moon.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Planète mars ////////////
    Planete mars((path+"/obj/planete.obj").c_str(), path+ "/textures/mars.jpg", semiMajorAxis_[4], eccentricity_[4], angularVelocity_[4]);
    mars.updatePosition(0);
    mars.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Planète jupiter ////////////
    Planete jupiter((path+"/obj/planete.obj").c_str(), path+ "/textures/jupiter.jpg", semiMajorAxis_[5], eccentricity_[5], angularVelocity_[5]);
    jupiter.updatePosition(0);
    jupiter.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Planète saturn ////////////
    Planete saturn((path+"/obj/planete.obj").c_str(), path+ "/textures/saturn.jpg", semiMajorAxis_[6], eccentricity_[6], angularVelocity_[6]);
    saturn.updatePosition(0);
    saturn.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Planète uranus ////////////
    Planete uranus((path+"/obj/planete.obj").c_str(), path+ "/textures/uranus.jpg", semiMajorAxis_[7], eccentricity_[7], angularVelocity_[7]);
    uranus.updatePosition(0);
    uranus.rotationAngles = glm::vec3(0, 0, 0);

    //////////// Planète neptune ////////////
    Planete neptune((path+"/obj/planete.obj").c_str(), path+ "/textures/neptune.jpg", semiMajorAxis_[8], eccentricity_[8], angularVelocity_[8]);
    neptune.updatePosition(0);
    neptune.rotationAngles = glm::vec3(0, 0, 0);


    /////////////////////////Boucle de rendu/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // Activation du culling : Cull triangles which normal is not towards the camera
    // glEnable(GL_CULL_FACE);

    // Assure que l'on peut capturer les touche de clavier
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

    //On indique la couleur de fond
    glClearColor(1.0f, 1.0f, 1.0f, 1.0f);

    //On autorise les tests de profondeur
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    float lastTime = glfwGetTime();
    float currentTime, deltaTime;
    glm::mat4 MVP;

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

        // Stars
        stars.position = camera.position;
        stars.rotationAngles = glm::vec3(0, 0, 0);
        MVP = stars.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, stars, shader); // vider les buffers

        // Soleil
        sun.updatePosition(0); // car le soleil ne bouge pas
        sun.rotationAngles = glm::vec3(0, 0, 0);
        MVP = sun.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, sun, shader);

        // Planète mercury
        mercury.updatePosition(currentTime);
        mercury.rotationAngles = glm::vec3(0, 0, 0);
        MVP = mercury.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, mercury, shader);

        // Planète venus
        venus.updatePosition(currentTime);
        venus.rotationAngles = glm::vec3(0, 0, 0);
        MVP = venus.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, venus, shader);

        // Planète earth
        earth.updatePosition(currentTime);
        earth.rotationAngles = glm::vec3(0, 0, 0);
        MVP = earth.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, earth, shader);

        // Moon

        // Planète mars
        mars.updatePosition(currentTime);
        mars.rotationAngles = glm::vec3(0, 0, 0);
        MVP = mars.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, mars, shader);

        // Planète jupiter
        jupiter.updatePosition(currentTime);
        jupiter.rotationAngles = glm::vec3(0, 0, 0);
        MVP = jupiter.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, jupiter, shader);

        // Planète saturn
        saturn.updatePosition(currentTime);
        saturn.rotationAngles = glm::vec3(0, 0, 0);
        MVP = saturn.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, saturn, shader);

        // Planète uranus
        uranus.updatePosition(currentTime);
        uranus.rotationAngles = glm::vec3(0, 0, 0);
        MVP = uranus.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
        renderer.Draw(vArray, uranus, shader);

        // Planète neptune
        neptune.updatePosition(currentTime);
        neptune.rotationAngles = glm::vec3(0, 0, 0);
        MVP = neptune.getModelViewProjectionMatrix(camera);
        shader.setUniformMat4f("MVP", MVP);
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
