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
#include "pointLight.h"


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
    camera.position = glm::vec3(-3.1, 2.4, 1.3);
    camera.horizontalAngle = 1.57;
    camera.verticalAngle = 12.23;
    camera.computeMatrices(width, height);

    NavigationControls controls(window, &camera);

    /////////////////////////On crée un point de lumière/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    glm::vec3 lightPosition(0., 0., 0.);
    glm::vec3 lightColor(0.2f, 0.2f, 0.5f);
    float lightPower = 3.f;
    float reflectivity = 10.0f;
    PointLight pointlight(lightPosition, lightColor, lightPower, reflectivity);
    pointlight.Bind(&shader);

    // Lumiere ambiante
    shader.setUniform1f("intensityLight", 3.f);
    shader.setUniform3fv("ambientLightColor", glm::vec3(0.2f, 0.2f, 0.5f));




    /////////////////////////Création des formes à afficher//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    //////////// Définition des semiMajorAxis, eccentricity et angularVelocity des différentes planètes ////////////

    std::vector<double> semiMajorAxis_   = {0.00, 0.0, 0.390, 0.720, 1.0000, 1.520, 5.200, 9.580, 19.22, 30.05};
    std::vector<double> eccentricity_    = {0.00, 0.0, 0.206, 0.007, 0.0170, 0.093, 0.049, 0.057, 0.046, 0.010};
    std::vector<double> angularVelocity_ = {0.00, 0.0, 1.240, 1.170, 1.0000, 0.520, 0.080, 0.034, 0.010, 0.006};
    std::vector<double> scale_           = {100., 0.2, 0.040, 0.090, 0.1000, 0.053, 0.500, 0.400, 0.200, 0.200};
    std::vector<double> rotationSpeeds_  = {0.,  7.2/pow(10,4), 10.90/pow(10,4), -6.50/pow(10,4), 1674.4/pow(10,4), 868.2/pow(10,4), 45000/pow(10,4), 35500/pow(10,4), 9648./pow(10,4), 9719./pow(10,4)};

    std::vector<Planete*> planets;

    //////////// Stars ////////////
    Planete stars((path+"/obj/planete.obj").c_str(), path+ "/textures/stars.jpg", semiMajorAxis_[0], eccentricity_[0], angularVelocity_[0], scale_[0]);
    planets.push_back(&stars);

    //////////// Soleil ////////////
    Planete sun((path+"/obj/planete.obj").c_str(), path+ "/textures/sun.jpg", semiMajorAxis_[1], eccentricity_[1], angularVelocity_[1], scale_[1]);
    planets.push_back(&sun);

    //////////// Planète mercury ////////////
    Planete mercury((path+"/obj/planete.obj").c_str(), path+ "/textures/mercury.jpg", semiMajorAxis_[2], eccentricity_[2], angularVelocity_[2], scale_[2]);
    planets.push_back(&mercury);

    //////////// Planète venus ////////////
    Planete venus((path+"/obj/planete.obj").c_str(), path+ "/textures/venus.jpg", semiMajorAxis_[3], eccentricity_[3], angularVelocity_[3], scale_[3]);
    planets.push_back(&venus);

    //////////// Planète earth ////////////
    Planete earth((path+"/obj/planete.obj").c_str(), path+ "/textures/earth.jpg", semiMajorAxis_[4], eccentricity_[4], angularVelocity_[4], scale_[4]);
    planets.push_back(&earth);

    //////////// Planète mars ////////////
    Planete mars((path+"/obj/planete.obj").c_str(), path+ "/textures/mars.jpg", semiMajorAxis_[5], eccentricity_[5], angularVelocity_[5], scale_[5]);
    planets.push_back(&mars);

    //////////// Planète jupiter ////////////
    Planete jupiter((path+"/obj/planete.obj").c_str(), path+ "/textures/jupiter.jpg", semiMajorAxis_[6], eccentricity_[6], angularVelocity_[6], scale_[6]);
    planets.push_back(&jupiter);

    //////////// Planète saturn ////////////
    Planete saturn((path+"/obj/planete.obj").c_str(), path+ "/textures/saturn.jpg", semiMajorAxis_[7], eccentricity_[7], angularVelocity_[7], scale_[7]);
    planets.push_back(&saturn);

    //////////// Planète uranus ////////////
    Planete uranus((path+"/obj/planete.obj").c_str(), path+ "/textures/uranus.jpg", semiMajorAxis_[8], eccentricity_[8], angularVelocity_[8], scale_[8]);
    planets.push_back(&uranus);

    //////////// Planète neptune ////////////
    Planete neptune((path+"/obj/planete.obj").c_str(), path+ "/textures/neptune.jpg", semiMajorAxis_[9], eccentricity_[9], angularVelocity_[9], scale_[9]);
    planets.push_back(&neptune);


    for (int k=0; k<planets.size(); k++) {
        planets[k]->updatePosition(0); // position de l'élément au départ
        planets[k]->rotationAngles = glm::vec3(0, 0, 0);
    }





    /////////////////////////Boucle de rendu/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    // Assure que l'on peut capturer les touche de clavier
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

    //On autorise les tests de profondeur
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    float lastTime = glfwGetTime();
    float currentTime, deltaTime;
    float a = 0.01;
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
        camera.Bind(&shader);

        // Effacez l'image précédente une seule fois en dehors de la boucle de rendu
        renderer.Clear();

        // MAJ des objets
        for (int k=0; k<planets.size(); k++) {
            if (k==0) {
                stars.position = camera.position;
            }
            else if (k==1) {
                sun.updatePosition(0); // car le soleil ne bouge pas
            }
            else {
                planets[k]->updatePosition(currentTime);
            }
            planets[k]->rotationAngles.y += rotationSpeeds_[k];
            MVP = planets[k]->getModelViewProjectionMatrix(camera);
            shader.setUniformMat4f("MVP", MVP);
            renderer.Draw(vArray, *(planets[k]), shader); // vider les buffers
        }



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
