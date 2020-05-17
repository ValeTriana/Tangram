FigureSquare square;
FigureParall parall;
FigureTriangle triangle1;
FigureTriangle triangle2;
FigureTriangle triangle3;
FigureTriangle triangle4;
FigureTriangle triangle5;

void setup() {
  size(800,600);
  square = new FigureSquare (185,135,PI/4,35,1,color(255,51,153),color(255,51,153));
  parall = new FigureParall (110,210,0,25,1,color(255,128,0),color(255,128,0));
  triangle1 = new FigureTriangle(135,170,PI,50,1,color(51,255,0),color(51,255,0));
  triangle2 = new FigureTriangle(218,85,PI/2,50,1,color(255,0,17),color(255,0,17));
  triangle3 = new FigureTriangle(202,203,-PI/4,70,1,color(0,128,255),color(0,128,255));
  triangle4 = new FigureTriangle(68,135,-PI/2,100,1,color(255,255,0),color(255,255,0));
  triangle5 = new FigureTriangle(135,69,0,100,1,color(191,63,192),color(191,63,192));
}

void draw() {
  background(0,255,162);
  square.display();
  parall.display();
  triangle1.display();
  triangle2.display();
  triangle3.display();
  triangle4.display();
  triangle5.display();
    
  square.select_move();
  parall.select_move();
  triangle1.select_move();
  triangle2.select_move();
  triangle3.select_move();
  triangle4.select_move();
  triangle5.select_move();  
}

class Figure {
  float x, y, angle, d, speed;
  color c1,c2;
  Figure(float xpos, float ypos, float tempAngle, float tempD, float tempSpeed, color tempC1, color tempC2){
    x = xpos;
    y= ypos;
    angle = tempAngle;
    d = tempD;
    speed = tempSpeed;
    c1= tempC1;
    c2= tempC2;
  }
  void select_move(){
    color c;
    boolean overfigure = false;
    c= get(mouseX, mouseY);
    if ((red(c)==red(c2) && green(c)==green(c2) && blue(c)==blue(c2))){
      overfigure=true;
    } else {
      overfigure = false;
    }
    if(mousePressed){
      if(mouseButton==LEFT && overfigure) {
        x = mouseX;
        y = mouseY;
      }
      if(mouseButton==RIGHT && overfigure) {
        angle += PI/12;
        mousePressed=false;  
      }
    }
  }
}