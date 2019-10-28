class Flower_Bee {

  // Variables
  float speedX; //Der blev lavet en speed variable så man kunne flytte på blomsten og sætte den til forskellig hastighed
  float speedY;
  float ballX;
  float ballY;


  float r;       // radius of the flower petal
  int n_petals;  // number of petals 
  float x;       // x-position of the center of the flower
  float y;       // y-position of the center of the flower
  int outColor;//hexadecimal number for the color of petals
  int midColor;

  Flower_Bee(float temp_r, int temp_n_petals, float temp_x, float temp_y, int temp_outColor, int temp_midColor, float temp_speedX, float temp_speedY) {
    r=temp_r;
    n_petals = temp_n_petals;
    x=temp_x;
    y=temp_y;
    outColor=temp_outColor;
    midColor=temp_midColor;
    speedX = temp_speedX;
    speedY = temp_speedY;
  }

  void display () {

    fill(outColor);
    for (float i=0; i<PI*2; i+=2*PI/n_petals) {
      ballX=x + r*cos(i);
      ballY=y + r*sin(i);
      ellipse(ballX, ballY, r, r);
    }
    fill(midColor);
    ellipse(x, y, r*1.2, r*1.2);
  }
  void move() {

    x = x + speedX;
    y = y + speedY;
  }
  void bounce() {

    if (x > width-r || x < r || y > height || y < 0) {
      speedX = speedX * (-1);
      speedY = speedY * (-1);
    }
  }

  void hit(Flower_Bee other) {
    float d = dist(x, y, other.x, other.y);
    if (d < r + other.r) {
      r = random(r, width/20);
      x = random(width);
      y = random(height);
      outColor = int(random(#000000, #FFFFFF));
      midColor = int(random(#000000, #FFFFFF));
      speedX = random(speedX, width/450) * (-1);
      speedY = random(speedY, height/450) * (-1);
    }
  }

  void fly() {
    x = mouseX;
    y = mouseY;
  }
}
