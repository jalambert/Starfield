Particle[] dot = new Particle[500];
void setup() {
  size(800, 800);
  background(255);
  for (int i = 0; i < dot.length; i++) {
    dot[i] = new Particle();
  }
}
double w = Math.random()*800;
double h = Math.random()*800;
color Color;
int timer;
void draw() {
  fill(0, 0, 0, 5);
  rect(0, 0, 800, 800);
  for (int i = 0; i < dot.length; i++) {
    dot[i].move();
    dot[i].show();
  }

  if ((millis()%50)%30 == 0) {
    
    for (int i = 0; i < dot.length; i++) {
      dot[i] = new Particle();
    }
    for (int i = 0; i < dot.length; i++) {
      Color = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      w = Math.random()*800;
      h = Math.random()*800;
      dot[i].move();
      dot[i].show();
    }
  }

}

void mouseReleased() {
  for (int i = 0; i < dot.length; i++) {
    dot[i] = new Particle();
  }
  for (int i = 0; i < dot.length; i++) {
    w = Math.random()*800;
    h = Math.random()*800;
    dot[i].move();
    dot[i].show();
  }
}

class Particle {
  double myX, myY, speed, angle; 
  color myColor; 
  Particle() {
    speed = Math.random()*10; 
    myX = w;//Math.random()*800; 
    myY = h;//Math.random()*800; 
    myColor = color(255); 
    speed = (Math.random()*8); 
    angle = Math.random()*2;
  }
  void move() {
    myX = myX + (speed*Math.cos(angle*PI)); 
    myY = myY + (speed*Math.sin(angle*PI));
  }
  void show() {
    noStroke();
    fill(Color); 
    ellipse((float)myX, (float)myY, 2, 2);
  }
}


class OddballParticle {
}
