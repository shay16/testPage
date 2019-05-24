
PImage bg;
PImage fish;
PImage shark;
Shark[] s=new Shark[10];
int stings;
void setup()   
{     
  size(500, 500);
  bg = loadImage("water.jpg");
  shark = loadImage("shark.jpg");
  fish = loadImage("fish.png");
  bg.resize(500, 500);
  shark.resize(125,80);
  fish.resize(50,50);
  background(bg);
  for (int i =0; i <s.length; i++) {
    s[i]=new Shark (width/2, height/2, shark);
  }
} 


void draw()   
{    
  background(bg);
  image(fish, mouseX, mouseY);
  fish.resize(80, 80);
  fill(0,200,0);
 

  for (int i =0; i <s.length; i++) {
    s[i].move();
    s[i].show();
    
    }
   
  }
  
class Shark   
{     
  int x;
  int y; 
  PImage shark;

  Shark(int x, int y, PImage s) {
    this.x=x;
    this.y=y;
    shark = s;
    image(shark, x,y);
  }
 

  void move() {

    //x motion
    if (mouseX>x) {
      x+=(int)(Math.random()*10);
    } else if (mouseX<x) {
      x-=(int)(Math.random()*10);
    } else if (mouseX==X) {
      x+=(int)(Math.random()*4);
    }

    //y motion
    if (mouseY>y) {
      y+=(int)(Math.random()*10);
    } else if (mouseY<y) {
      y-=(int)(Math.random()*10);
    } else if (mouseX==X) {
      y+=(int)(Math.random()*4);
    }
  }

  void show() {
    image(shark,x,y);
  }

  int getarX() {
    return x;
  }
  
  int getvary() {
    return y;
  }
}