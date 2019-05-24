import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.ListIterator;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.Collections;
//import java.util.Comparable;
import java.io.FileNotFoundException;
import static java.lang.System.*;
public class MovieList {
  private ArrayList <Movie> MovieList;
  int count;
  public MovieList() {
    MovieList =new ArrayList <Movie>();
  }
  public void loadMovies(String m) {
    Scanner scan = new Scanner(m);
    int num= scan.nextInt();
    String s =scan.nextLine();
    MovieList.add(new Movie(num, s));
  }
  public int getCount() {
    return count;
  }
  public double getAverageScore() {
    double x=0;
    for (Movie m : MovieList) {
      x+= m.getRating();
    }
    return x + count;
  }
  
   public int getFrequency(String s) {
    Iterator <Movie> here =MovieList.iterator();
    int times =0;
    while (here.hasNext()) {
      String re = here.next().getReview();
      if (re.contains(s)) {
        times++;
      }
    }
    return (times);
  }
  
  public double getAverageWordScore(String s) {

    double times =0;
    double scores =0;
    for(Movie m: MovieList){
      if(m.getReview().indexOf(s) <-1)
        {
        times++;
        scores =scores + m.getRating();
        }
      }
    
   return (scores/times);
    //return (scores);
    //return (times);
  }

  public String overallComment() {
    double s=this.getAverageScore();
    if (s<1) {
      return "This movie is horrible";
    } else if (s<3) {
      return "This movie is ok";
    } else if (s<4) {
      return "This movie is good";
    } else {
      return "This movie is ecellent";
    }
  }
  public void sortMoviesByCount() {
    Collections.sort(MovieList);
  }

  public String toString() {
    Iterator <Movie> here = MovieList.iterator();
    String s = " ";
    while (here.hasNext()) {
      s = s + here.next() + "\n";
    }
    return s;
  }
}