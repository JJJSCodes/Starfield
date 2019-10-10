Particle [] group;
void setup()
{
  size(500, 500);
  background(0, 0, 0);
  group = new Particle[100];
  for ( int i = 0; i < group.length; i++) {
    group[i] = new Particle();
  }
}
void draw()
{
  for (int i = 0; i < group.length; i++) {
    group[i].show();
    group[i].move();
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
    background(0, 0, 0);
    ellipse((float)x, (float)y, 10, 10);
  }
}

class OddballParticle //inherits from NormalParticle
{
  //your code here
}
