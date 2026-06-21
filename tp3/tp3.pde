// https://youtu.be/mcDMQhqjtsk?si=pS5TXM-fYkhFROTJ

int cant = 8;
float tam;
float desvioMouse = 0;
float grosorLinea = 2;

void setup() {
  size (800, 400);
  tam = 400.0 / cant;
  rectMode (CORNER);
  noStroke();
  desvioMouse = 12.5;;
  grosorLinea = 2.0;
}

void draw() {
  background (128);
  
  if (mouseX > 400) {
    desvioMouse = map(mouseX, 400, 800, -25, 25);
    float distancia = dist (mouseX, mouseY, 600, 200);
    grosorLinea = map(distancia, 0, 300, 1, 6);
  }
  pushMatrix();
  dibujarEsquema (12.5, 2.0);
  popMatrix();
  
  stroke(0);
  strokeWeight(2);
  line(400, 0, 400, 400);
  noStroke();
  
  pushMatrix();
  translate(400,0);
  float angulo = map(desvioMouse, -25, 25, -0.01, 0.01);
  rotate (angulo);
  dibujarEsquema(desvioMouse, grosorLinea);
  popMatrix();
}
void dibujarEsquema(float movimiento, float grosor){
  
  for (int i = -1; i < cant + 2; i++){
    for (int j = 0; j < cant; j++ ){
      float desvioFila = 0;
      
      if (j % 2 == 0) {
        desvioFila = movimiento;
      } else {
        desvioFila = -movimiento;
      }
      
      if ((i+j) % 2 == 0) {
        fill (0);
      } else {
        fill (255);
      }
      rect (i * tam + desvioFila, j * tam , tam, tam);
    }
  }
  for (int j= 0; j <= cant; j++) {
    stroke (110);
    strokeWeight (grosor);
    line (0, j * tam, 400, j * tam);
    noStroke();
  }
}
float darValorOriginal (float valor) {
  return 12.5;
}
void keyPressed () {
  desvioMouse = darValorOriginal (desvioMouse);
  grosorLinea = 2.0;
}
