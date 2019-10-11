Particle [] group;
void setup()
{
  size(500, 500);
  group = new Particle[100];
  for ( int i = 0; i < group.length; i++) {
    group[i] = new Particle();
  }
}
void draw()
{
  background(0, 0, 0);
  for (int i = 0; i < group.length; i++) {
    group[i].move();
    group[i].show();
  }
}
class Particle
{
  double x, y, Speed, Angle;
  Particle() {
    x = 250;
    y = 250;
    Speed = (double)(Math.random() * 10 + 5);
    Angle = (double)(Math.random() * 360 + 1);
  }
  void move() {
    x = (Math.cos(Angle) * Speed + x);
    y = (Math.sin(Angle) * Speed + y);
  }

  void show() {
    fill(255,255,255);
    ellipse((float)x, (float)y, 10, 10);
  }
}

class OddballParticle extends Particle //inherits from NormalParticle
{
  void move() {
    
  }
  void show() {
    fill(255,255,255);
    ellipse((float)x, (float)y, 25, 25);
  }
}
