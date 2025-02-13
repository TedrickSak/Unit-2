float sx, sy;
int ux, uy;
int ax, ay;
int vx, vy;
float ya, yb;

void setup() {
  size(600,400);
  sx = -100;
  sy = 500;
  ax = 200;
  ay = 200;
  vx = 5;
  vy = 5;
  yb = 150;
}


void draw() {
  background(0,0,50);
  noStroke();
  
  //stars a
  fill(250,250,222);
  ellipse(200,ya,5,5);
  ellipse(350,ya+60,5,5);
  ellipse(500,ya+120,5,5);
  ellipse(150,ya+200,5,5);
  ellipse(50,ya+250,5,5);
  ellipse(410,ya+220,5,5);
  ellipse(240,ya+160,5,5);
  ellipse(570,ya+10,5,5);
  ellipse(300,ya+110,5,5);
  ya = ya + 0.7;
  if (ya > 300) {
    ya = -150;
  }
  
  //stars b
  ellipse(200,yb,5,5);
  ellipse(350,yb+60,5,5);
  ellipse(500,yb+120,5,5);
  ellipse(150,yb+200,5,5);
  ellipse(50,yb+250,5,5);
  ellipse(410,yb+220,5,5);
  ellipse(240,yb+160,5,5);
  ellipse(570,yb+10,5,5);
  ellipse(300,yb+110,5,5);
  yb = yb + 0.7;
    if (yb > 300) {
    yb = 0;
  }
  
  
  //sun
  fill(180,50,10);
  ellipse(sx,sy,300,300);
  sx = sx + 1;
  sy = sy - 0.8;
  if (sy < -200) {
  sx = -100;
  sy = 500;
  }
  
  
  //uranus
  fill(70,230,230);
  ellipse(ux,uy,100,100);
  fill(211,232,232);
  ellipse(ux,uy,20,200);
  ux = ux + 2;
  uy = uy + 1;
  if (ux > 700) {
    ux = -45;
    uy = -45;  
  }
  
  
  //asteroid
  fill(100);
  ellipse(ax,ay,60,60);
  fill(70);
  ellipse(ax+15,ay-10,20,20);
  fill(80);
  ellipse(ax-13,ay,17,17);
  fill(90);
  ellipse(ax,ay+15,15,15);
  ax = ax + vx;
  ay = ay + vy;
  if (ax > 580) {
    vx = -5;
  }
  if (ax < 30) {
    vx = 5;
  }
  if (ay > 380) {
    vy = -5;
  }
  if (ay < 30) {
    vy = 5;
  }


}
