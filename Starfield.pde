//your code here
Particle[] particles;
void setup()
{
  //your code here
    size(500, 500);
    particles = new Particle[1000];
    particles[0] = new OddballParticle();
    for(int i = 1; i < particles.length; i++)
        particles[i] = new Particle();
}
void draw()
{
  background(200);
  //your code here
    for(int i = 0; i < particles.length; i++) {
        particles[i].move();
        particles[i].show();
    }
}
void mouseClicked() {
   setup(); 
}
class Particle
{
  //your code here
    double x, y, angle, speed;
    color myColor;
    Particle() {
        x = y = 250;
        angle = Math.random() * TAU;
        speed = Math.random() * 6.9;
        myColor = color((int) (Math.random()*255), (int) (Math.random()*255), (int) (Math.random()*255));
    }
    void move() {
        x += Math.cos(angle)*speed;
        y += Math.sin(angle)*speed;
        if(x > 500 || x < 0 || y > 500 || y < 0) {
          x = y = 250;
        angle = Math.random() * TAU;
        speed = Math.random()*6.9;
        }
    }
    void show() {
        fill(myColor);
        ellipse((float)x, (float)y, 10, 10);
    }
}

class OddballParticle extends Particle//inherits from Particle
{
  OddballParticle() {
    x = y = 250;
    angle = Math.random() * TAU;
        speed = Math.random() * 6.9;
  }
  //your code here
  void move() {
      angle += Math.random();
      speed += Math.random() * 4 - 2;
      x += Math.cos(angle)*speed;
      y += Math.sin(angle)*speed;
  }
  void show() {
        fill(myColor);
        ellipse((float)x, (float)y, 10, 10);
    }
}
