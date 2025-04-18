PImage personaje;

void setup(){
  size (800, 400);
  background(255, 246, 224);
  personaje = loadImage("archivo.jpg");
  
}

void draw(){
  image(personaje, 0, 0, 400, 400);
  println("X:");
  println(mouseX);
  println("Y:");
  println(mouseY);
  
  //remera
  fill(137, 28, 62);
  rect(500, 250, 200, 200, 28);
  
 //brazos y cuello
 fill(245, 220, 188);
  rect(500, 300, 50, 200);
  rect(650, 300, 50, 200);
  ellipse(600, 260, 70, 30);
  
 //pelo
  fill(0);
  rect(498, 125, 195, 46);
  triangle(499, 125, 693, 125, 597, 16);
  
  //cara
  fill(245, 220, 188);
  triangle(517, 126, 677, 126, 600, 300);
  fill(255);
  ellipse(566, 152, 50, 20);
  ellipse(629, 152, 50, 20);
  fill(0);
  ellipse(566, 152, 12, 12);
  ellipse(629, 152, 12, 12);
  noFill();
  bezier(535.0,141.0,556.0,136.0,569.0,136.0,590.0,141.0);
  bezier(604.0,141.0,623.0,138.0,637.0,138.0,656.0,141.0);
  bezier(603.0,161.0,614.0,176.0,623.0,235.0,587.0,204.0);
  bezier(587.0,250.0,598.0,254.0,604.0,254.0,615.0,250.0);
  fill(245, 220, 188);
  ellipse(525, 147, 13, 30);
  ellipse(670, 147, 13, 30);
  
}
