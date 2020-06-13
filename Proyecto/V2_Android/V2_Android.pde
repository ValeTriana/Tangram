Boton [] boton;
Imagen myImage;
boolean derecha=false;
int guardarboton;
int mouser []=new int[4];
int mouse []=new int[6];
int first=0;
float cmcuadrado;

void setup() {
  fullScreen();
  background(255);
  boton = new Boton[5];
  myImage= new Imagen (loadImage ("hoja.jpg"));
  boton[0] = new Cuadrado (30*displayDensity, displayHeight-40*displayDensity, 20*displayDensity, color(255, 128, 0), false );//bloquear
  boton[1] = new Cuadrado (30*displayDensity, 80*displayDensity, 20*displayDensity, color(255, 128, 0), false );//distancia
  boton[2] = new Cuadrado (30*displayDensity, displayHeight-500*displayDensity, 20*displayDensity, color(255, 128, 0), false );//cambio pixel
  boton[3] = new Cuadrado (30*displayDensity, displayHeight-440*displayDensity, 20*displayDensity, color(255, 128, 0), false );//eliminar regla
  boton[4] = new Movil (displayWidth-40*displayDensity, displayHeight*0.1, 10*displayDensity, color(255, 128, 0), false );//rango
}
void draw() {
  myImage.displai();
  for (int i=0; i<4; i++) {
    boton[i].display();
    boton[i].seleccion();
  }

  for (int i=0; i<4; i++) {
    if (boton[i].selec) {
      guardarboton= i;
      switch(guardarboton) {
      case 0:
        for (Boton bot : boton) {
          bot.selec=false;
        }
        break;
      case 1:
        if (mousePressed) {
          System.out.println(boton[1].selec);
          myImage.distancia();
        }
        break;
      case 2:
        boton[4].display();
        boton[4].seleccion();
        boton[4].rango(color(255, 255, 255));
        boton[4].desplazar();
        break;
      case 3:
        //if (mousePressed) {
          myImage.eliminar();
        //}
      }
    }
  }
}/*
void touchStarted() {
 println("touch started");
 }
 
 void touchMoved() {
 println("touch moved"); 
 }
 */
void mouseReleased() {
  boton[4].selec=false;
}
//}*/
