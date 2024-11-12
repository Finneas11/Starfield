Particle[] particles = new Particle[100];

void setup() {
  size(600, 600);

  for (int i = 0; i < particles.length; i++) {
    if (i == 0) {
      particles[i] = new OddballParticle();
    }
    else {
      particles[i] = new Particle();
    }

  }

}

void draw() {
  background(0);

  for (int i = 0; i < particles.length; i++) {
    particles[i].move();
    particles[i].show();
  }

}

class Particle {
  float x, y;
  color myColor;
  float angle, speed;


  Particle() {
    x = random(width);
    y = random(height);
    myColor = color(255);
    angle = random(TWO_PI);
    speed = random(1, 3);

  }


  void move() {
    x += cos(angle) * speed;
    y += sin(angle) * speed;

    if (x < 0 || x > width) x = random(width);
    if (y < 0 || y > height) y = random(height);
  }


  void show() {
    fill(myColor);
    noStroke();
    ellipse(x, y, 10, 10);
  }

}


class OddballParticle extends Particle {

  OddballParticle() {
    super();
    myColor = color(255);
    speed = random(2, 5);

  }

  void show() {
    fill(myColor);
    noStroke();
    ellipse(x, y, 20, 20);
  }

}
