import java.io.File;  // Import the File class
import java.io.FileNotFoundException;  // Import this class to handle errors
import java.util.Scanner; // Import the Scanner class to read text files

public class part2 {
  
  static int sum = 0;
  public static void main(String[] args) throws FileNotFoundException {
    File myObj = new File("input.txt");
      Scanner myReader = new Scanner(myObj);
      while (myReader.hasNextLine()) {
        String ef1 = myReader.nextLine();
        String ef2 = myReader.nextLine();
        String ef3 = myReader.nextLine();
        sum += (int)popularchar3(ef1, ef2 , ef3)>=(int)'a'?(int)popularchar3(ef1, ef2 , ef3)-(int)'a'+1 : (int)popularchar3(ef1, ef2 , ef3)- (int)'A'+27;
      }
      myReader.close();
      System.out.println(sum);
  }
  public static char popularchar3(String a,  String b, String c) throws FileNotFoundException {
    for(int i = 0; i < a.length(); i++){
      for(int j = 0; j < b.length(); j++){
          if (a.charAt(i) == b.charAt(j)){
            for(int k = 0; k < c.length(); k++){
                if (a.charAt(i) == c.charAt(k)){
                    return c.charAt(k);
                }
            }
          }  
      }
    }
    return '0';
  }

}