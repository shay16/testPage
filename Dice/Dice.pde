Die die;
int count1;
int count2;
int count3;
int count4;
int count5;
int count6;
int total;

void setup()
{
  size(800, 475);
  noLoop();
 noStroke();
 background(155,255,155);
  fill(0, 100, 100);
  rect(475, 0, 350, 480);
  fill(255);
  strokeWeight(10);
  textSize(35);
  text("How to Play: \nMatch all 4 Dice", 500, 50);
  //text("Total:" + total,500,200);

  //fill(255, 0,0);
 //System.out.println("Total: " + total);
}
void draw()

{
fill(255,0,0);
rect(200,475,200,0);
for (int i =0; i<300; i+=150) {
 for (int j =0; j<300; j+=150) {
 die = new Die(i, j);
 die.roll();
 die.sho();
 if (die.getVal()==1) {
 count1++;
 } else if (die.getVal()==2) {
 count2++;
 } else if (die.getVal()==3){
 count3++;
 } else if (die.getVal()==4){
 count4++;
 } else if (die.getVal()==5){ 
 count5++;
 } else if (die.getVal()==6){
 count6++;
 }
 total=(count1 + count2+ count3+ count4+ count5+ count6);
 text("Total:" + total ,500,200);
 }}
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int xx;
  int yy;
  int val;
  int sum;
  Die(int x, int y) {//constructor
  xx=x;
  yy=y; 
      }
void roll() {
   val=(int)(Math.random()*6)+1;
 }
 void sho() {
 fill(225);
 rect(xx+90, yy+100, 140, 140, 18); 

    if (val ==1) {
      fill(45);
      ellipse(xx+155, yy+160, 40, 40);}
    else if (val ==2) {
      fill(45);
      ellipse(xx +140, yy+160, 40, 40);
      ellipse(xx +190, yy +160, 40, 40);}
    else if(val==3){
      fill(45);
      ellipse(xx +155, yy+135, 40, 40);
      ellipse(xx +125, yy +185, 40, 40);
      ellipse(xx +180, yy +185, 40, 40);}
      else if(val==4){
      fill(45);
      ellipse(xx +125, yy+130, 40, 40);
      ellipse(xx +125, yy +185, 40, 40);
      ellipse(xx +180, yy +130, 40, 40);
      ellipse(xx +180, yy +185, 40, 40);}
      else if(val==5){
      fill(45);
      ellipse(xx +120, yy+130, 40, 40);
      ellipse(xx +120, yy +185, 40, 40);
      ellipse(xx +200, yy +130, 40, 40);
      ellipse(xx +200, yy +185, 40, 40);
      ellipse(xx +160, yy +160, 40, 40);}
      else if(val==6){
      fill(45);
      ellipse(xx +115, yy+140, 40, 40);
      ellipse(xx +115, yy +195, 40, 40);
      ellipse(xx +205, yy +140, 40, 40);
      ellipse(xx +205, yy +195, 40, 40);
      ellipse(xx +160, yy +140, 40, 40);
      ellipse(xx +160, yy +195, 40, 40);}
      
  }
  int getVal(){
    return val;
  }
}