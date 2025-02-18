float sx, sy;
int ux, uy;
int ax, ay;
int vx, vy;
float ya, yb;
float mx, my, mv;
float jx, jy;

void setup() {
  size(600,400);
  sx = -100;
  sy = 500;
  ax = 200;
  ay = 200;
  vx = 5;
  vy = 5;
  ya = -150;
  yb = 150;
  mx = 300;
  my = -100;
  mv = 1;
  jx = mouseX + 400;
  jy = mouseY + 400;
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
  if (ya > 450) {
    ya = -300;
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
    if (yb > 450) {
    yb = -300;
  }
  
  
  //sun
  fill(180,50,10);
  ellipse(sx,sy,300,300);
  sx = sx + 0.8;
  sy = sy - 0.5;
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


  //meteor
  fill(242,206,22);
  triangle(mx,my+5,mx+26,my+50,mx-26,my+50);
  triangle(mx,my+65,mx+26,my+20,mx-26,my+20);
  mx = mx - 0.2 * mv;
  mv = mv * 1.05;
  my = my + mv;
  if (my > 300000000) {
  my = -100;
  mx = 300;
  mv = 1;
  }
  
  
  //jupiter
  fill(152,93,20);
  circle(jx,jy,180);
  if (mouseX > jx) {
  jx = jx + 1;
  }
   if (mouseX < jx) {
  jx = jx - 1;
  }
    if (mouseY > jy) {
  jy = jy + 1;
  }
  if (mouseY < jy) {
  jy = jy - 1;
  }
}
