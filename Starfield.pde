//your code here
Particle[] particles;
void setup()
{
	//your code here
    size(500, 500);
    particles = new Particle[100];
    for(int i = 1; i < particles.length; i++) {
        particles[i] = new Particle();
    }
}
void draw()
{
	//your code here
    for(int i = 0; i < particles.length; i++) {
        particles[i].move();
        particles[i].show();
    }
}
class Particle
{
	//your code here
    double x, y, angle, speed;
    Color color;
    Particle() {
        x = y = 250;
        angle = Math.random() * TAU;
        speed = Math.random() * 6.9;
    }
    void move() {
        x += Math.cos(angle)*speed;
        y += Math.sin(angle)*speed;
    }
    void show() {
        fill(color);
        ellipse(x, y, 5, 5);
    }
}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here

}


