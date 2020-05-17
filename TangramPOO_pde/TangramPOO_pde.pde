Figure [] figs;
boolean overfigure2 = false;

void setup(){
  size(800,600);
  figs = new Figure[7];
  figs[0] = new FigureParall (110,210,0,25,1,color(255,128,0),false);
  figs[1] = new FigureSquare (185,135,PI/4,35,1,color(255,51,153),false);
  figs[2] = new FigureTriangle(135,170,PI,50,1,color(51,255,0),false);
  figs[3] = new FigureTriangle(218,85,PI/2,50,1,color(255,0,17),false);
  figs[4] = new FigureTriangle(202,203,-PI/4,70,1,color(0,128,255),false);
  figs[5] = new FigureTriangle(68,135,-PI/2,100,1,color(255,255,0),false);
  figs[6] = new FigureTriangle(135,69,0,100,1,color(191,63,192),false);
}

void draw() {
  background(0,255,162);
  for (Figure fig:figs){
    fig.display();
    fig.select_move();
  }
}

abstract class Figure {
  float x, y, angle, d, speed;
  color c1;
  boolean selected;
  Figure(float xpos, float ypos, float tempAngle, float tempD, float tempSpeed, color tempC1, boolean tempSelected){
    x = xpos;
    y= ypos;
    angle = tempAngle;
    d = tempD;
    speed = tempSpeed;
    c1 = tempC1;
    selected = tempSelected;
  }
  abstract void display();
  void select_move(){
    boolean overfigure = false;
    color c;
    c= get(mouseX, mouseY);
    if (!selected && !overfigure2) {
      if ((red(c)==red(c1) && green(c)==green(c1) && blue(c)==blue(c1))) {
        overfigure=true;
      } else {
        overfigure=false;
      }
    }
    if(selected){
      x = mouseX;
      y = mouseY;
    }
    if(mousePressed){
      if (mouseButton==LEFT && selected) {
        selected=!selected;
        overfigure2=!overfigure2;
        mousePressed=false;
        /*x = mouseX;
        y = mouseY;*/
      }
      if (mouseButton==LEFT && overfigure && !selected && !overfigure2) {
        selected=true;
        overfigure2=true;
        mousePressed=false;
        /*x = mouseX;
        y = mouseY;*/
      }
      if (mouseButton==RIGHT && overfigure) {
        angle += PI/12;
        mousePressed=false;
      }
    }
  }
}
