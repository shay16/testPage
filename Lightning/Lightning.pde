
int startX = 0;
int startY = 50 ;
int endX = 0;
int endY = 150 ;
int rand1;
int rand2;
int rand3;
PImage photo;
void setup()
{
  size(300, 300);
  strokeWeight (random(5, 10));
  rand1=(int)(Math.random()*255)+1;
  rand2=(int)(Math.random()*255)+1;
  rand3=(int)(Math.random()*255)+1;
  stroke(rand1, rand2, rand3);
  photo =loadImage("spooky.png");
}
void draw()
{
  background(0);
  photo.resize(0, 200);
  image(photo, 50, 90);
  while (endX<400) {
    endX =startX +(int)(Math.random()*9);
    endY =startY +(int)(Math.random()*19)-9;
    line(startX, startY, endX, endY);
    startX=endX;
    startY=endY;
    println("startX" +startX);
    println("startY" +startY);
  }
}
void mousePressed()
{
  startX = 0;
  startY = 50 ;
  endX = 0;
  endY = 150;
  rand1++;
  rand2++;
  rand3++;
}