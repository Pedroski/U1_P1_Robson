float f = random(255, 255);
int rxo = 500;
int rxoo = 500;
int rxt = 1000;
int rxtt = 1000;
int ryo = 100;
int ryoo = 100;
int ryt = 700;
int rytt = 700;
int xo = 250;
int yo = 250;
int x = -50;
int y = 400;
int r = 0;
PImage Car;
color BGC;
color RC;

void setup()
{
  fullScreen();
  Car = loadImage("Car.png");
  BGC = color(0);
  RC = color(250, 250, 250);
}

void draw()
{
  background(BGC);
  image(Car, x, y, xo, yo);
  fill(RC);
  rect(rxo, ryo, xo, yo);
  fill(RC);
  rect(rxoo, ryt, xo, yo);
  fill(RC);
  rect(rxt, ryoo, xo, yo);
  fill(RC);
  rect(rxtt, rytt, xo, yo);
  x = x + 7;
  if ( x > width+100 )
  {
    rxo = (int)random(200, width);
  }
  if ( x > width+101 )
  {
    rxoo = (int)random(200, width);
  }
  if ( x > width+102 )
  {
    rxt = (int)random(200, width);
  }
  if ( x > width+103 )
  {
    rxtt = (int)random(200, width);
  }
  if ( x > width+104 )
  {
    ryo = (int)random(0, height);
  }
  if ( x > width+105 )
  {
    ryoo = (int)random(0, height);
  }
  if ( x > width+106 )
  {
    ryt = (int)random(0, height);
  }
  if ( x > width+107 )
  {
    rytt = (int)random(0, height);
  }
  if ( x > width+108 )
  {
    x = -200;
  }
}

void keyPressed()
{
  if( key == 'w' )
  {
    y = y - 35;
  }
  if( key == 's' )
  {
    y = y + 35;
  }
}