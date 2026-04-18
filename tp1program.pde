//Juana Burgos comision 2, legajo 125533/6
PImage img;

void setup () {
  size(800,400);
  img= loadImage ("piramidelouvre1.jpeg");
}

void draw(){
  background(70, 110, 150);
  image(img, 0, 0, 400, 400);
  noStroke();
  fill(60, 110, 150); //azul oscuro
  rect(400, 0, 400, 400);

  
  fill(30,50,80);
  rect(400, 330, 400, 70);
  fill(255, 180, 80);
  triangle(500, 330, 700, 330, 600, 120);

stroke(0, 100);
for (int i = -10; i <= 10; i++) {
  //diagonales
  line (500 + i*20, 330, 600 + i*20, 120);
  //diagonales
  line (700 - i*20, 330, 600 - i*20, 120);
}
 //fondo azul para tapar lineas
 fill (60, 110, 150);
 noStroke();
 
 //tapamos lado izquierdo
 beginShape();
 vertex(400, 0);
 vertex(600, 120);
 vertex(500, 330);
 vertex(400, 330);
 vertex(400, 0);
 endShape(CLOSE);
 
 //tapamos lado derecho
 beginShape();
 vertex(800, 0);
 vertex(600, 120);
 vertex(700, 330);
 vertex(800, 330);
 vertex(800, 0);
 endShape(CLOSE);
 
 //edificios
 noStroke();
 fill(15, 25, 45);
 rect(400, 150, 45, 180);
 rect(755, 150, 45, 180);
 
 //edificios fondo
 fill(15, 25, 45);
 rect(415, 120, 20, 30);
 rect(765, 120, 20, 30);
 
 //edificios abajo
 fill(15, 25, 45);
 noStroke();
 rect(440, 310, 60, 20);
 
 rect(700, 310, 60, 20);
 
 //reflejo piso
 noStroke();
 fill(160, 110, 50, 25);
triangle(500, 330, 700, 330, 600, 420);
 
 //luces detras
 fill (255, 255, 150);
 for(int i= 0; i < 6; i++) {
   ellipse(450 + i*15, 328, 2, 2);
   ellipse(660 + i*15, 328, 2, 2);
 }
 
 
 //triangulos costados
 stroke(0);
 strokeWeight(1);
 fill(255, 180, 80);
 triangle(410, 330, 440, 330,425, 300);
 triangle(760, 330, 790, 330, 775, 300);

 
 noFill();
 stroke(0);
 strokeWeight(2);
 triangle(500, 330, 700, 330, 600, 120);
 

 fill (212, 150, 50, 200);
 stroke(0);
 strokeWeight(2);
 triangle(540, 330, 660, 330, 600, 250);
 stroke(0);
 strokeWeight(2);
 line(600, 330, 600, 250);
 
stroke(0);
strokeWeight(6);
line (540, 330, 660, 330);

 //luces
 strokeWeight(2);
 fill(255, 255, 180, 220);
 
 //izquierda
 ellipse(481, 390, 8, 8);
 ellipse(505, 370, 6, 6);
 ellipse(525, 350, 4, 4);
 ellipse(540, 335, 2, 2);
 
 //derecha
 ellipse(720, 390, 8, 8);
 ellipse(695, 370, 6, 6);
 ellipse(675, 350, 4, 4);
 ellipse(660, 335, 2, 2);
 
 //edificios
 fill(20, 30, 50);
}

  
 
