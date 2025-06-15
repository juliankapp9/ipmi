//Kapp Julian 122742/1
//tp3
//https://youtu.be/_T2GEbdpxog
//En el video me olvide de explicar la ultima parte de la funcion miRombo pero es la misma solo q rotado para hacer la parte derecha del rombo

PImage Obra;
int cantidad = 10;
float posX = 600;
float posY = 200;
float angulo = 0;
boolean resetRot = false;

void setup() {
  size(800, 400);
  Obra = loadImage("Obra.png");
  noStroke();
}

void draw() {
  background(255);

  image(Obra, 0, 0, width / 2, height);

  miFondo(width / 2, 0, width / 2, height, cantidad);

  if (mouseX > 400) {
    angulo += 0.05;
  }

  if (resetRot) {
    angulo = 0;
    resetRot = false;
  }

  push();
  translate(posX, posY);
  rotate(angulo);
  miRombo(0, 0, 400, 400);
  pop();
}

void keyPressed() {
  if (key == ' ') {
    resetRot = true;
  }
}
