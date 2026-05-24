//Juana Burgos comision 2

PImage personajes;
PImage crash;
PImage coco;
PImage cortex;
PImage isla;

PFont fuente;

String estado;


void setup() {
  size(640, 480);
  
  //imagenes
  personajes = loadImage ("personajes1.png");
  crash = loadImage ("crash1.png");
  coco = loadImage ("coco1.png");
  cortex = loadImage ("cortex1.png");
  isla = loadImage ("isla1.png");
  
  fuente = createFont ("letra1.ttf", 48);
  textFont (fuente);
  
  estado = "pantalla1";
}

void draw() {

    
  // pantalla1
  
  if (estado.equals("pantalla1")) {
    background (255,140, 0);
    
    //titulo
    textAlign (CENTER, CENTER);
    fill(255);
    textSize(46);
    text("CRASH BANDICOOT" ,320, 50);
    
    image (personajes, 90,100,460,253);
    
    fill (0, 150, 255);
    rect (245, 370, 150, 50);
    
    fill (255);
    textSize (22);
    text ("START",320, 395);
    frameCount = 0;
  }
  
  // pantalla_historia
  
  else if (estado.equals("pantalla_historia")) {
    background (0);
    
    image (isla, 0, 0, 640, 480);
    
    fill (0, 0, 0, 190);
    rect (0, 0, 640, 480);
    
    textAlign (CENTER, TOP);
    fill (255, 140, 0);
    textSize (34);
    
    text ("¿DE QUE TRATA EL JUEGO?", 320, 40);
    
    textAlign (CENTER, CENTER);
    fill(255);
    textSize(19);
    text("La historia se ambienta en las Islas Wumpa,", 320, 150);
    text("un misterioso archipiélago al sur de Australia.", 320, 180);
    text("Allí, el malvado Doctor Neo Cortex experimenta", 320, 210);
    text("con los animales para crear un ejército de mutantes.", 320, 240);
    text("Crash, uno de sus experimentos fallidos, logra escapar.", 320, 270);
    text("Ahora deberá recorrer el mapa para rescatar a su novia", 320, 300);
    text("Tawna y arruinar los planes de dominación mundial.", 320, 330);
    
    if (frameCount > 420) {
      estado = "pantalla2";
    }
  }
  
  // pantalla2
  
  else if (estado.equals("pantalla2")) {
    background(255, 200, 0);
    image(crash, 20, 90, 300, 300);
    
    int textoX = 800 - ((frameCount - 420) * 4);
    if (textoX < 340) {
      textoX = 340;
    }
    
    textAlign (LEFT, TOP);
    fill (0);
    textSize (34);
    text ("Crash Bandicoot", textoX, 100);
    
    textSize (18);
    text ("Es el protagonista principal", textoX, 160);
    text ("de la saga. Un marsupial que", textoX, 190);
    text ("fue mutado por el Dr. Cortex.", textoX, 220);
    text ("Destaca por su ataque giratorio", textoX, 250);
    text ("y su gran valentia para salvar", textoX, 280);
    text ("a las Islas Wumpa", textoX, 310);
    
    if (frameCount > 720) {
      estado = "pantalla3";
    }
  }
    
  // pantalla3
  
  else if (estado.equals("pantalla3")) {
    background(100, 180, 255);
    image(coco, 20, 90, 300, 300);
    
    int textoX = 2000 - ((frameCount - 420) * 4);
    if (textoX < 340) {
      textoX = 340;
    }
    textAlign (LEFT, TOP);
    fill (255);
    textSize (34);
    text ("Coco Bandicoot", textoX, 100);
    
    textSize (18);
    text("Es la hermana menor de Crash.", textoX, 160);
    text("A diferencia de el, coco es una", textoX, 190);
    text("genio de la informatica.", textoX, 220);
    text("Siempre ayuda en las misiones", textoX, 250);
    text("hackeando sistemas complejos", textoX, 280);
    text("y construyendo vehiculos.", textoX, 310);
    
    if (frameCount > 1020) { 
      estado = "pantalla4";
    }
  }
  
  
  // pantalla4
  
  else if (estado.equals("pantalla4")) {
    background(50);
    image(cortex, 20, 90, 300, 300);
    
    int textoX = 3200 - ((frameCount - 420) * 4);
    if (textoX < 340) {
      textoX = 340;
    }
    textAlign (LEFT, TOP);
    fill (255, 200, 0);
    text ("Doctor Cortex", textoX, 100);
    
    fill(255);
    textSize(18);
    text("El archienemigo de Crash y un", textoX, 160);
    text("cientifico loco muy peligroso.",textoX, 190);
    text("Es el creador accidental de", textoX, 220);
    text("Crash mediante el Rayo Evolvo,",textoX, 250);
    text("y su unico fin en la vida es", textoX, 280);
    text("lograr la dominacion mundial", textoX, 310);
    
    if (frameCount > 1320) { 
      estado = "pantalla5";
    }
  }
  
  // pantalla5
  
  else if(estado.equals("pantalla5")) {
    background(0);
    
    textAlign (CENTER, CENTER);
    fill(255);
    textSize(40);
    text("GRACIAS POR VER", 320, 180);
    
    //boton REINICIAR
    fill(255,140, 0);
    rect(220, 280, 200, 60);
    fill(255);
    textSize (24);
    text("REINICIAR", 320, 310);
  }
}

void mousePressed () {
  
  if (estado.equals("pantalla1") && mouseX > 245 && mouseX < 395 && mouseY > 370 && mouseY < 420) {
    estado = "pantalla_historia";
  }
  
  if (estado.equals("pantalla5") && mouseX > 220 && mouseX < 420 && mouseY > 280 && mouseY < 340) {
    estado = "pantalla1";
  }
}
