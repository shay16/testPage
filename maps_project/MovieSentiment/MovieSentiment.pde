import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;
import java.util.Collections;
import java.io.FileNotFoundException;
import java.util.Iterator;
import static java.lang.System.*;
int size;
Scanner scan;
MovieList m =new MovieList();
double a, b, c, d, e, f, g, h;
void setup() {
size(500,600);
background(0, 0, 0);
fill(178, 102,255);
textSize(15);
rect(100,100,105,105,7);
fill(153, 153,255);
rect(290,100,105,105,7);
fill(255, 255,103);
rect(100,250,105,105,7);
fill(102, 255, 102);
rect(290,250,105,105,7);
fill(255,255,255);
text("Frequency and average score of words.",100,20);
  try {
    Scanner scan = new Scanner(new File("C:\\Users\\Shayla\\Desktop\\MovieSentiment\\movieReview.dat"));
    
  while(scan.hasNext()){
    m.loadMovies(scan.nextLine());
  }
  m.sortMoviesByCount();
 println(m);
  //out.println(m); 
  }
  catch (FileNotFoundException e) {
    e.printStackTrace();
  }
  catch (Exception ex) {
    System.err.println("Error reading file");
    ex.printStackTrace();
  }

}
void draw(){
size(500,600);
background(0, 0, 0);
//fill(178, 102,255);
textSize(20);
//text(m.toString(),10,40);
//text("Horrible",110,110);
fill(178, 102,255);
rect(100,100,105,105,7);
fill(153, 153,255);
text("HORRIBLE",105,155);
rect(290,100,105,105,7);
fill(255, 255,103);
text("OK",325,155);
rect(100,250,105,105,7);
fill(102, 255, 102);
text("GOOD",120,305);
rect(290,250,105,105,7);
fill(178, 102,255);
text("EXCELLENT",290,305);
fill(255,255,255);
text("Frequency and average score of words.",80,20);
a = m.getAverageWordScore("horrible");
b = m.getAverageWordScore("ok");
c = m.getAverageWordScore("good");
d = m.getAverageWordScore("excellent");
e = m.getFrequency("horrible");
f = m.getFrequency("ok");
g = m.getFrequency("good");
h = m.getFrequency("excellent");
//horrible
if (mousePressed && 100<=mouseX && mouseX<=200 && 100<=mouseY && mouseY<=200) {
  text("Horrible ",80,400);
  text("Average score: "+a,80,420);
  text("Times occured: "+e,80,440);
}
//ok
else if (mousePressed && 300<=mouseX && mouseX<=400 && 100<=mouseY && mouseY<=200) {
 text("Ok ",80,400);
 text("Average score: "+b,80,420);
 text("Times occured: "+f,80,440);
}
//good
else if (mousePressed && 100<=mouseX && mouseX<=200 && 250<=mouseY && mouseY<=350) {
  text("Good ",80,400);
  text("Average score: "+c,80,420);
  text("Times occured: "+g,80,440);
}
//excellent
else if (mousePressed && 300<=mouseX && mouseX<=400 && 250<=mouseY && mouseY<=350) {
  text("Excellent ",80,400);
  text("Average score: "+d,80,420);
  text("Times occured: "+h,80,440);
}

}