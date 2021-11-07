Particle[] dot = new Particle[720];
void setup() {

  size(800, 800);
  background(255);
  for (int j = 0; j < 360; j++) {
    dot[j] = new Particle();
    dot[j].setAngle(PI*j/180);
  }
  for (int i = 360; i < dot.length; i++) {
    dot[i] = new Oddball();
    dot[i].setAngle(PI*((i-360))/180);
  }
}
float count = 0;
void draw() {
  fill(255);
  noStroke();
  fill(0, 0, 0, 16);
  rect(0, 0, 800, 800);
  for (int i = 0; i < 360; i++) {
    dot[i].move();
    dot[i].show();
  }
  for (int j = 360; j < 720; j++) {
    dot[j].move();
    dot[j].show();
  }
}


class Particle {
  float myX, myY, speed, angle;
  int size;
  public void setAngle(float n) {
    angle = n;
  }
  public void setmyX(){
  }
  public void setmyY(){
  }
  Particle() {
    myX = 400;
    myY = 400;
    speed = 3.0;
    size = 8;
  }
  void move() {
    if (angle <= 2*PI && angle > 1.5*PI) {
      if ((sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))>(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));
      }
    }
    if (angle <= 1.5*PI && angle > PI) {
      if ((sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))>(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));
      }
    }
    if (angle <= PI && angle > .5*PI) {
      if ((sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))>(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));
      }
    }
    if (angle <= .5*PI && angle >= 0) {
      if ((sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))>(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));


      }
    }
  }
  void show() {

    noStroke();
    fill(0,0,(int)(Math.random()*255));
    ellipse((float)myX, (float)myY, size, size);
  }
}

class Oddball extends Particle {
  public void setAngle(float n) {
    angle = n;
  }
  Oddball() {
    myX = 400;
    myY = 400;
    speed = 3.0;
    size = 8;
  }
  public void setmyX(){
    myX = (sqrt(2)*400)*cos(angle)+565.7;
  }
  public void setmyY(){
    myY = (sqrt(2)*400)*sin(angle)+565.7;
  }
  void move() {
    if (angle <= 2*PI && angle > 1.5*PI) {
      if (565.7-(sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))<(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));
      }
    }
    if (angle <= 1.5*PI && angle > PI) {
      if (565.7-(sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))<(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));
      }
    }
    if (angle <= PI && angle > .5*PI) {
      if (565.7-(sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))<(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));
      }
    }
    if (angle <= .5*PI && angle >= 0) {
      if (565.7-(sqrt(sq(abs(mouseX-400))+sq(abs(mouseY-400))))<(sqrt(sq(abs(myX-400))+sq(abs(myY-400))))) {
        myX += (speed*Math.cos(angle));
        myY += (speed*Math.sin(angle));
      } else {
        myX -= (speed*Math.cos(angle));
        myY -= (speed*Math.sin(angle));
      }
    }
  }
  void show() {
    noStroke();
    fill((int)(Math.random()*255),0,0);
    ellipse((float)myX, (float)myY, size, size);
  }
}
