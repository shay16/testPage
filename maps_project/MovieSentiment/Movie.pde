import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import java.util.Collections;
import java.io.FileNotFoundException;
import static java.lang.System.*;

public class Movie implements Comparable <Movie>{
  private int rating;
  private String review;
  public Movie(int x, String y){
    rating =x;
    review =y;
  }
  
  public Movie(Movie m){
    review = m.getReview();
    rating = m.getRating();
  }
  public int compareTo(Movie other){
    if(this.rating>other.rating){
      return 1;
    }
    if(this.rating<other.rating){
      return -1;
    }
    else{
      return 0;
    }
  }
  public int getRating(){
    return rating;
  }
  public String getReview(){
    return review;
  }
  public String toString(){
    return(rating+review);
  }
}