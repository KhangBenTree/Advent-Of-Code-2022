import java.io.File;  // Import the File class
import java.io.FileNotFoundException;  // Import this class to handle errors
import java.util.Scanner; // Import the Scanner class to read text files

public class part1 {
  
  static int sum = 0;
  public static void main(String[] args) throws FileNotFoundException {
    File myObj = new File("input.txt");
      Scanner myReader = new Scanner(myObj);
      while (myReader.hasNextLine()) {
        String data = myReader.nextLine();
        String[] bag = data.split(String.format("(?<=\\G.{%d})", data.length()/2));
        sum += (int)popularchar(bag[0], bag[1])>=(int)'a'?(int)popularchar(bag[0], bag[1])-(int)'a'+1 : (int)popularchar(bag[0], bag[1])- (int)'A'+27;
      }
      myReader.close();
      System.out.println(sum);
  }
  public static char popularchar(String a,  String b) throws FileNotFoundException {
    for(int i = 0; i < a.length(); i++){
      for(int j = 0; j < b.length(); j++){
          if (a.charAt(i) == b.charAt(j)){
            return a.charAt(i);
          }  
      }
    }
    return '0';
  }

}