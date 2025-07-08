//Kapp Julian 122742/1
//tprec
//https://youtu.be/_T2GEbdpxog
//El video es el mismo ya que me dijo que no hacia falta hacerlo otra vez porque solo tenia que cambiar algo del fondo

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

  miFondo(width / 2, 0, width / 2, height, 0);
  miFondo(width / 2, 0, width / 2, height, 5);

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
