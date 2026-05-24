int estado;
int contador;
int contador2; //NEO
int contador3; //MAQUINAS

int tamXBoton;
int tamYBoton;
float posXBoton;
float posYBoton;
boolean botonActivado;

PImage Maquina;
PImage Capsulas;
PImage Neo;
PImage Morfeo;
float posXmaquina;
float posYtexto3;
float posXtexto3;
float posXcapsulas;

float posY1, posY2, posY3, posY4, posY5, posY6, posY7, posY8, posY9, posY10;
float posY11, posY12, posY13, posY14, posY15, posY16, posY17, posY18, posY19, posY20;

float opacidadTexto;
float opacidadTexto3;
float transparencia;

//estado 1
int contadorEstado1;

// estado 2
float opacidadImagenes;
float posYtituloNeo;
String tituloNeo, textoNeo, textoNeo2;
int letrasTitulo, letrasTexto, letrasTexto2;

//estado 4
int contador4 = 0;
float escalaImagen4 = 0.1;
float posYTextoArriba4 = -150;
float posYTextoAbajo4;
PImage[] framesNeo = new PImage[4];
int frameActual4 = 0;
int velocidadAnim4 = 12;

//estado 5
int contador0 = 0;
int contador1= 0;
int contador5 = 0;
float opacidadConclusion5 = 0;
float opacidadPregunta5 = 0;
float opacidadBoton5 = 0;
boolean mostrarPregunta = false;
int timerGlitch = 0;
boolean glitchActivo = false;
float opacidadDespierta5 = 0;
boolean mostrarDespierta = false;

PFont fuente;

void setup() {
  size(640, 480);

  Capsulas = loadImage("capsulas.png.jpeg");
  Maquina = loadImage("maquina.png.jpeg");
  Neo = loadImage("neo.png.jpeg");
  Morfeo = loadImage("morfeo.png.jpeg");

  //valores variables
  estado= 0;
  opacidadImagenes = 0;
  posYtituloNeo = 80;
  tituloNeo = "NEO";
  textoNeo = "Neo descubre que \nel mundo en el \nque vive no es \nreal y que podria\nser 'el elegido'.";
  textoNeo2 = "Debe enfrentarse a la \nrealidad y tomar una decisión...";
  letrasTitulo = 0;
  letrasTexto = 0;
  letrasTexto2 = 0;
  contador2 = 0;

  posXmaquina = width;
  posYtexto3 = -100;
  posXcapsulas = -300;
  opacidadTexto3 = 255;

  transparencia = 255;
  opacidadTexto = 0;

  // Fuente
  fuente = loadFont("CourierNewPSMT-48.vlw");
  textFont(fuente);

  // USAMOS LEFT POR DEFECTO, NO TOCAMOS textAlign
  rectMode(CORNER);
  imageMode(CORNER);

  // Botón 
  tamXBoton = 156;
  tamYBoton = 60;
  posXBoton = 230;
  posYBoton = 370;

  // Posiciones iniciales letras
  posY1 = -100; posY2 = -300; posY3 = -200; posY4 = -500; posY5 = -150;
  posY6 = -400; posY7 = -250; posY8 = -150; posY9 = -350; posY10 = -460;
  posY11 = -100; posY12 = -200; posY13 = -300; posY14 = -400; posY15 = -430;
  posY16 = -120; posY17 = -620; posY18 = -546; posY19 = -240; posY20 = -460;

  //estado4
  posYTextoAbajo4 = height + 150;
  framesNeo[0] = loadImage("neo1.png.jpeg");
  framesNeo[1] = loadImage("neo2.png.jpeg");
  framesNeo[2] = loadImage("neo3.png.jpeg");
  framesNeo[3] = loadImage("neo4.png.jpeg");
}

void draw() {
  background(0);

  rectMode(CORNER);

  // Letras Matrix
  fill(0, 255, 70, transparencia);
  textSize(28);

  text("A", 100, posY1); text("7", 200, posY2); text("#", 300, posY3); text("X", 400, posY4);
  text("M", 500, posY5); text("0",600, posY6); text("C",150, posY7); text(":",250, posY8);
  text("%",350, posY9); text("Q",450, posY10); text("z",20, posY11); text("p",700, posY12);
  text("Ñ",120, posY13); text("&",320, posY14); text("w",70, posY15); text("¡",110, posY16);
  text("H",60, posY17); text("*",280, posY18); text("4",550, posY19); text("K",600, posY20);

  // Movimiento letras
  posY1 += 4; posY2 += 6; posY3 += 3; posY4 += 5; posY5 += 7;
  posY6 += 2; posY7 += 2; posY8 += 9; posY9 += 8; posY10 += 5;
  posY11 += 1; posY12 += 9; posY13 += 5; posY14 += 3; posY15 += 4;
  posY16 += 12; posY17 += 2; posY18 += 8; posY19 += 3; posY20 += 1;

  // Reinicio letras
  if (posY1 > height) posY1 = -100; if (posY2 > height) posY2 = -100;
  if (posY3 > height) posY3 = -100; if (posY4 > height) posY4 = -100;
  if (posY5 > height) posY5 = -100; if (posY6 > height) posY6 =-100;
  if (posY7 > height) posY7 =-100; if (posY8 > height) posY8 =-100;
  if (posY9 > height) posY9 =-100; if (posY10 > height) posY10 =-100;
  if (posY11 > height) posY11 =-100; if (posY12 > height) posY12 =-100;
  if (posY13 > height) posY13 =-100; if (posY14 > height) posY14 =-100;
  if (posY15 > height) posY15 =-100; if (posY16 > height) posY16 =-100;
  if (posY17 > height) posY17 =-100; if (posY18 > height) posY18 =-100;
  if (posY19 > height) posY19 =-100; if (posY20 > height) posY20 =-100;

                                                                        // ESTADO 0 CARATULA 
  if (estado == 0) {
    if (botonActivado == true) {
      transparencia = 60;
    }

    fill(255);
    textSize(60);
    text("MATRIX", 200, 150); // <- ORIGINAL

    textSize(20);
    text("-Una simulación creada por máquinas-", 100, 210); // <- ORIGINAL

    // Botón
    if (mouseX > posXBoton && mouseX < posXBoton + tamXBoton &&
        mouseY > posYBoton && mouseY < posYBoton + tamYBoton) {
      fill(0, 255, 0);
    } else {
      fill(50);
    }

    rect(posXBoton, posYBoton, tamXBoton, tamYBoton);
    fill(255);
    textSize(20);
    text("INICIAR", 260, 405); // <- ORIGINAL

    if (botonActivado == true) {
      estado = 1;
      contadorEstado1 = 0;
    }
  }

                                                                                 // ESTADO 1 
  if (estado == 1) {
    contadorEstado1++;

    if (opacidadTexto < 255 && contadorEstado1 < 150){
      opacidadTexto += 2;
    }

    if(contadorEstado1 > 200){
      opacidadTexto -= 2;
    }

    if (opacidadTexto < 0) {
      opacidadTexto = 0;
      contador2 = 0;
      letrasTitulo = 0;
      letrasTexto = 0;
      opacidadImagenes = 0;
      estado = 2;
    }

    fill(255, opacidadTexto);
    textSize(34);
    text("¿QUE ES MATRIX?", 150, 130); 
    textSize(20);
    text("Matrix es una simulación creada\npor máquinas para controlar a la\nhumanidad...", 120, 240);
  }

                                                                            //ESTADO 2 NEO
  if (estado == 2){
    contador2++;
    if (opacidadImagenes < 255){
      opacidadImagenes += 3;
    }

    float neoX = 380;
    float morfeoX= -30;
    float imagenY = 80;

    tint(255, opacidadImagenes);
    image(Morfeo,morfeoX,imagenY,250,200);
    image(Neo,neoX,imagenY,260,350);
    noTint();

    fill(255);
    textSize(50);
    // Solo cambiamos a CENTER para este título
    pushStyle();
    textAlign(CENTER);
    if(frameCount % 8 == 0 && letrasTitulo < tituloNeo.length()) {
      letrasTitulo++;
    }
    String tituloActual = tituloNeo.substring(0, letrasTitulo);
    text(tituloActual, width/2, posYtituloNeo);
    popStyle();

    if(letrasTitulo >= tituloNeo.length()){
      if(frameCount % 2 ==0 && letrasTexto < textoNeo.length()){
        letrasTexto++;
      }
    }

    fill(255);
    textSize(20);
   
    textAlign(LEFT);
    String textoActual = textoNeo.substring(0, letrasTexto);
    text(textoActual, 200, 170);

    if(letrasTexto >= textoNeo.length()){
      if(frameCount % 2 == 0 && letrasTexto2 < textoNeo2.length()){
        letrasTexto2++;
      }
    }

    fill(255);
    textSize(20);
    String textoActual2 = textoNeo2.substring(0, letrasTexto2);
    text(textoActual2, 40, 360);

    if(letrasTexto2 >= textoNeo2.length() && contador2 > 400){
      estado = 3;
      contador3 = 0;
    }
  }

                                                                                 //ESTADO 3 
  if (estado == 3){
    contador3++;

    if (contador3 < 400){
      if (posYtexto3 < 80) posYtexto3 +=2;
      if (posXmaquina >370) posXmaquina -= 3;
      if (posXcapsulas < 50) posXcapsulas += 3;
    }

    if (contador3 > 400) {
      posXcapsulas -= 3;
      posXmaquina += 3;
      posYtexto3 -= 3;
      opacidadTexto3 -= 2;
    }

    image(Maquina, posXmaquina, 100, 230,230);
    image(Capsulas, posXcapsulas, 250,200,200);

    fill(255);
    textSize(34);
    text("LA VERDAD SOBRE MATRIX", 90, posYtexto3); 

    fill(255, opacidadTexto3);
    textSize(20);
    text("Las máquinas usan\na los humanos como\nfuente de energía\nmientras sus mentes\nviven dentro de Matrix...",50,140); //

    if (posXcapsulas < -300){
      estado = 4;
      posXcapsulas = -300;
      posXmaquina = width;
      posYtexto3 = -100;
      opacidadTexto3 = 255;
    }
  }

                                                                                   //ESTADO 4
  if (estado == 4){
    contador4++;

    fill(0, 255, 70);
    pushStyle();
    textAlign(CENTER);
    textSize(40);
    text("EL ELEGIDO", width/2, 60);
    popStyle();

    imageMode(CENTER);
    if(escalaImagen4 < 1.0){
      escalaImagen4 += 0.01;
    }

    if(contador4 % velocidadAnim4 == 0){
      frameActual4++;
      if(frameActual4 >= framesNeo.length){
        frameActual4 = 0;
      }
    }

    float anchoImg = 350 * escalaImagen4;
    float altoImg = 250 * escalaImagen4;
    image(framesNeo[frameActual4], width/2, height/2 + 50, anchoImg, altoImg);
    imageMode(CORNER);

    fill(255);
    pushStyle();
    textAlign(CENTER);
    textSize(18);
    if(posYTextoArriba4 < height/2 - 130){
      posYTextoArriba4 += 4;
    }
    text("Neo aprende a controlar Matrix. \nDescubre que puede romper las reglas \nfísicas y obtiene habilidades sobrehumanas.", width/2, posYTextoArriba4);

    if(posYTextoAbajo4 > height/2 + 200){
      posYTextoAbajo4 -= 4;
    }
    text("Puede detener balas, moverse rápidamente y \nluchar contra los agentes del sistema.", width/2, posYTextoAbajo4);
    popStyle();

    if(contador4 > 500){
      estado = 5;
      contador5 = 0;
      escalaImagen4 = 0.1;
      posYTextoArriba4 = -150;
      posYTextoAbajo4 = height + 150;
      frameActual4 = 0;
    }
  }

                                                                               //ESTADO5
  if (estado == 5){
    background(0);
    contador5++;

    if(contador5 < 400){
      if(contador5 > 30) opacidadConclusion5 += 3;
      if(opacidadConclusion5 > 255) opacidadConclusion5 = 255;

      pushStyle();
      textAlign(CENTER, CENTER);
      fill(255, opacidadConclusion5);
      textSize(28);
      text("Neo eligió la verdad.", width/2, height/2 - 80);

      fill(255, opacidadConclusion5 - 50);
      textSize(20);
      text("Despertó. Luchó. Liberó mentes.", width/2, height/2 - 20);

      fill(255, opacidadConclusion5 - 100);
      textSize(20);
      text("Demostró que la realidad", width/2, height/2 + 40);
      text("es una elección.", width/2, height/2 + 70);
      popStyle();
 }

    if(contador5 >= 400 && contador5 < 460){
      opacidadConclusion5 -= 4.25;
      pushStyle();
      textAlign(CENTER, CENTER);
      fill(255,opacidadConclusion5);
      textSize(28);
      text("Neo eligió la verdad.", width/2, height/2 - 80);
      textSize(20);
      text("Despertó. Luchó. Liberó mentes.", width/2, height/2 - 20);
      text("Demostró que la realidad", width/2, height/2 + 40);
      text("es una elección.", width/2, height/2 + 70);
      popStyle();
    }

    if(contador5 > 460){
      mostrarPregunta = true;

      if(contador5 % 120 == 0){
        glitchActivo = true;
        timerGlitch = 0;
   }

      if(glitchActivo){
        timerGlitch++;
        stroke(0, 255, 0, 150);
        strokeWeight(2);
        for(int i = 0; i < 6; i++){
          float y = random(height);
          line(0, y, width, y);
     }
        if(timerGlitch > 6) glitchActivo = false;
      }

      if(contador5 > 520) opacidadPregunta5 += 2.5;
      if(opacidadPregunta5 > 255) opacidadPregunta5 = 255;

      pushStyle();
      textAlign(CENTER, CENTER);
      fill(0, 255, 0, opacidadPregunta5);
      textSize(42);
      text("¿Y si Matrix", width/2, height/2 - 40);
      text("es real?...", width/2, height/2 + 10);
      popStyle();

      if(contador5 > 640 && contador5 < 760){
        mostrarDespierta = true;
        opacidadDespierta5 += 8;
        if(opacidadDespierta5 > 255) opacidadDespierta5 = 255;
    } else if(contador5 >= 760){
        opacidadDespierta5 -= 5;
        if(opacidadDespierta5 < 0) opacidadDespierta5 = 0;
    }

      if(opacidadDespierta5 > 0){
        pushStyle();
        textAlign(CENTER, CENTER);
        fill(255,5,5, opacidadDespierta5);
        textSize(18);
        text("Despierta.", width/2, height/2 + 80);
        popStyle();
   }

  if(contador5 > 700){
        opacidadBoton5 += 3;
        if(opacidadBoton5 > 255) opacidadBoton5 = 255;

        rectMode(CENTER);
        noFill();
        stroke(0, 255, 0, opacidadBoton5);
        strokeWeight(2);
        rect(width/2, height - 100, 220, 50);
        rectMode(CORNER);

        pushStyle();
        textAlign(CENTER, CENTER);
        fill(0, 255, 0, opacidadBoton5);
        textSize(20);
        text("REINICIAR SISTEMA", width/2, height - 100);
        popStyle();
      }
    }
  }
   }

void mousePressed() {
  if(estado == 5 && contador5 > 700){
    if(mouseX > width/2 - 110 && mouseX < width/2 + 110 &&
       mouseY > height - 125 && mouseY < height - 75){

   //REINICIO 
      estado = 0;
      botonActivado = false;
      transparencia = 255;
      opacidadTexto = 0;

      //botón carátula 
      posXBoton = 230;
      posYBoton = 370;
      tamXBoton = 156;
      tamYBoton = 60;

    //contadores
      contadorEstado1 = 0;
      contador2 = 0;
      contador3 = 0;
      contador4 = 0;
      contador5 = 0;
      contador0 = 0;
      contador1 = 0;

    //estado 5
      opacidadConclusion5 = 0;
      opacidadPregunta5 = 0;
      opacidadBoton5 = 0;
      opacidadDespierta5 = 0;
      mostrarPregunta = false;
      mostrarDespierta = false;
      glitchActivo = false;
      timerGlitch = 0;

   //estado 4
      escalaImagen4 = 0.1;
      posYTextoArriba4 = -150;
      posYTextoAbajo4 = height + 150;
      frameActual4 = 0;

   //estado 2
      letrasTitulo = 0;
      letrasTexto = 0;
      letrasTexto2 = 0;
      opacidadImagenes = 0;
      posYtituloNeo = 80;

   //estado 3
      posXcapsulas = -300;
      posXmaquina = width;
      posYtexto3 = -100;
      opacidadTexto3 = 255;

      //letras Matrix
      posY1 = -100; posY2 = -300; posY3 = -200; posY4 = -500; posY5 = -150;
      posY6 = -400; posY7 = -250; posY8 = -150; posY9 = -350; posY10 = -460;
      posY11 = -100; posY12 = -200; posY13 = -300; posY14 = -400; posY15 = -430;
      posY16 = -120; posY17 = -620; posY18 = -546; posY19 = -240; posY20 = -460;

      return;
    }
  }

  if (estado == 0 && mouseX > posXBoton &&
      mouseX < posXBoton + tamXBoton &&
      mouseY > posYBoton &&
      mouseY < posYBoton + tamYBoton) {
    botonActivado = true;
  }
}
