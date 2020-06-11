Boton [] boton;
Imagen myImage;
boolean derecha=false;
int guardarboton;
int mouser []=new int[4];
float cmcuadrado;

void setup() {
  fullScreen();
  background(255);
  boton = new Boton[2];
  myImage= new Imagen (loadImage ("hoja.jpg"));
  boton[0] = new BotonCuadrado (80, displayHeight-80, 40, color(255, 128, 0), false );
  boton[1] = new BotonCuadrado (80, 168, 40, color(255, 128, 0), false );
}
void draw(){
  myImage.displai();
  for (Boton bot : boton) {
    bot.display();
    bot.seleccion();
  }
  /*if(boton[1].selec){
    myImage.distancia();
  }*/
  
  for (int i=0; i<2; i++){
    if (boton[i].selec){
      guardarboton= i;
      switch(guardarboton) {
        case 0:
          break;
        case 1:
          myImage.distancia();
          break;
      }
    }
  }
}
