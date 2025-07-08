void miFondo(float posX, float posY, float anchoTotal, float altoTotal, int inicioLinea) {
  float alto = altoTotal / 10;
  float ancho = anchoTotal;

  for (int i = 0; i < 5; i++) {
    if (i % 2 == 0) {
      fill(0);
    } else {
      fill(255);
    }

 rect(posX, posY + (i + inicioLinea) * alto, ancho, alto);    
  }
}

void miRombo(float posX, float posY, float ancho, float alto) {
  int franjas = 5;
  float anchoTri = ancho / 2;
  float anchoFranja = anchoTri / franjas;

  for (int i = 0; i < franjas; i++) {
    if ((i % 2) == 0) fill(255);
    else fill(0);

    float x1 = posX - ancho / 2 + i * anchoFranja;
    float x2 = posX - ancho / 2 + (i + 1) * anchoFranja;

    float y1 = map(x1 - (posX - ancho / 2), 0, anchoTri, alto / 2, 0) - alto / 2;
    float y2 = map(x2 - (posX - ancho / 2), 0, anchoTri, alto / 2, 0) - alto / 2;
    float y3 = map(x2 - (posX - ancho / 2), 0, anchoTri, alto / 2, alto) - alto / 2;
    float y4 = map(x1 - (posX - ancho / 2), 0, anchoTri, alto / 2, alto) - alto / 2;

    triangle(x1, y1, x2, y2, x2, y3);
    triangle(x1, y1, x2, y3, x1, y4);
  }

  for (int i = 0; i < franjas; i++) {
    if ((i % 2) == 0) fill(255);
    else fill(0);

    float x1 = posX + ancho / 2 - i * anchoFranja;
    float x2 = posX + ancho / 2 - (i + 1) * anchoFranja;

    float y1 = map(x1 - (posX + ancho / 2 - anchoTri), 0, anchoTri, 0, alto / 2) - alto / 2;
    float y2 = map(x2 - (posX + ancho / 2 - anchoTri), 0, anchoTri, 0, alto / 2) - alto / 2;
    float y3 = map(x2 - (posX + ancho / 2 - anchoTri), 0, anchoTri, alto, alto / 2) - alto / 2;
    float y4 = map(x1 - (posX + ancho / 2 - anchoTri), 0, anchoTri, alto, alto / 2) - alto / 2;

    triangle(x1, y1, x2, y2, x2, y3);
    triangle(x1, y1, x2, y3, x1, y4);
  }
}
