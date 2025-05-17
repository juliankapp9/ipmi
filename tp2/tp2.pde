//Kapp Julian 122742/1
//El boton de reinicio aparece 5 segundos despues de la ultima foto

PImage simuladores1, simuladores2, simuladores3;
PFont miFuente;
String textoA;
String textoB;
int posX;
int posX2;
int tiempoInicio;
PImage imagenActual;

int posY = 500;
int tiempoTextoFuera = 0;
int tiempoBotonAparecer = 0;

String textoImagen3 = "Los Simuladores trata sobre un grupo de personas que crean simulaciones para ayudar a resolver problemas ajenos. Usan engaños y estrategias muy elaboradas para enfrentarse a todo tipo de situaciones, desde conflictos personales hasta situaciones más complicadas";
int textoAlpha = 0;

int botonX, botonY, botonWidth, botonHeight;

void setup() {
  size(640, 480);
  simuladores1 = loadImage("simuladores1.jpg");
  simuladores2 = loadImage("simuladores2.jpg");
  simuladores3 = loadImage("simuladores3.jpg");
  miFuente = loadFont("miFuente.vlw");
  textoA = "Los";
  textoB = "Simuladores";
  posX = -20;
  posX2 = width + 20;
  imagenActual = simuladores1;

  botonX = width / 2 - 50;
  botonY = height - 50;
  botonWidth = 100;  
  botonHeight = 40;  
}

void draw() {
  image(imagenActual, 0, 0, width, height);  
//Imagen 1
  if (imagenActual == simuladores1) {
    textFont(miFuente);
    textSize(60);
    fill(255);
    text(textoA, posX, 100); 
    textSize(45);
    text(textoB, posX2, 150);

    if (posX < 330) posX += 3;
    if (posX2 > 330) posX2 -= 3;

    if (posX >= 330 && posX2 <= 330 && tiempoInicio == 0) {
      tiempoInicio = frameCount;
    }
  }

  if (tiempoInicio > 0 && frameCount - tiempoInicio >= 120 && imagenActual == simuladores1) {
    imagenActual = simuladores2;
  }
//imagen 2
  if (imagenActual == simuladores2) {
    textFont(miFuente);
    textSize(20);
    fill(255);
    int x = 100;

    text("Actores Principales:", x, posY);
    text("Federico D'Elía", x, posY + 25);
    text("Alejandro Fiore", x, posY + 50);
    text("Diego Peretti", x, posY + 75);
    text("Martín Seefeld", x, posY + 100);
    text("Jorge D'Elía", x, posY + 125);
    text("Alejandro Awada", x, posY + 150);
    text("Dirigida por: Damián Szifron", x, posY + 185);

    if (posY > -200) {
      posY -= 2;
    }

    if (posY <= -200 && tiempoTextoFuera == 0) {
      tiempoTextoFuera = frameCount;
    }

    if (tiempoTextoFuera > 0 && frameCount - tiempoTextoFuera >= 60) {
      imagenActual = simuladores3;
    }
  }
//imagen 3
  if (imagenActual == simuladores3) {
    tint(0, 0, 0, 150);
    image(simuladores3, 0, 0, width, height);
    noTint();

    if (textoAlpha < 255) {
      textoAlpha += 3;
    }

    textFont(miFuente);
    textSize(20);
    fill(255, 255, 255, textoAlpha);
    text(textoImagen3, 50, 100, width - 100, height - 100); 

    if (frameCount - tiempoTextoFuera >= 300 && tiempoBotonAparecer == 0) {
      tiempoBotonAparecer = frameCount; 
    }
//boton de reinicio
    if (tiempoBotonAparecer > 0 && frameCount - tiempoBotonAparecer >= 0) {
      fill(255, 100, 100);
      ellipse(botonX + botonWidth / 2, botonY + botonHeight / 2, botonWidth, botonHeight);

      float posmX = mouseX - (botonX + botonWidth / 2);  
      float posmY = mouseY - (botonY + botonHeight / 2); 
      if (posmX * posmX / (botonWidth / 2) / (botonWidth / 2) + posmY * posmY / (botonHeight / 2) / (botonHeight / 2) <= 1) {

        if (mousePressed) {
          imagenActual = simuladores1;
          posX = -20;
          posX2 = width + 20;
          posY = 500;
          tiempoInicio = 0;
          tiempoTextoFuera = 0;
          textoAlpha = 0;
          tiempoBotonAparecer = 0;
        }
      }
    }
  }
}
