Flower_Bee myBee;

Flower_Bee[] Flower = new Flower_Bee[3];

void setup() {
  //size(1600, 1200);
  fullScreen();
  frameRate(120);

  int _r1= width/20;
  int _r2 = width/35;
  int _wings = 2;
  int _petals=7;
  float _x=width/3;
  float _x2=width/2;
  float _y=height;
  float _y2=height/2;
  int _petalColor=#F74684;
  int _flowerMidColor=#A21446;
  int _myBeeWingColor=#F4FF64;
  int _myBeeColor= #EAD258;
  float _flowerMoveX=width/400;
  float _flowerMoveY=height/400;
  float _beeMoveX=0;
  float _beeMoveY=0;


  myBee = new Flower_Bee(_r1, _wings, _x, _y, _myBeeWingColor, _myBeeColor, _beeMoveX, _beeMoveY); 
  Flower[0] = new Flower_Bee(_r2, _petals, _x2, _y2, _petalColor, _flowerMidColor, _flowerMoveX, _flowerMoveY);
  Flower[1] = new Flower_Bee(_r2, _petals, _x2, _y2, _petalColor, _flowerMidColor, _flowerMoveX, _flowerMoveY);
  Flower[2] = new Flower_Bee(_r2, _petals, _x2, _y2, _petalColor, _flowerMidColor, _flowerMoveX, _flowerMoveY);
}

void draw() {
  background(#43AF76);

  for (int i = 0; i <= 2; i++) {
    Flower[i].display();
    Flower[i].move();
    Flower[i].bounce();
    Flower[i].hit(myBee);
  }
  myBee.display();
  myBee.fly();
}
