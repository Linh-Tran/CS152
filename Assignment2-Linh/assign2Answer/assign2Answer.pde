////assignment  #2 part 3
//int x;
//int y;
//int z;
//boolean isOrdered = false;
//
//if(x<y && y<z)||(x>y && y>z) {
//  isOrdered = true;
//}

//#3 method form
//void setup() {
//  if ( areThreeOrdered(2,4,20)){
//    println("they are in order");
//  } else {
//      println("they aren't in order");}
//     
//boolean areThreeOrdered ( int x, int y, int z) {
//  boolean isOrdered = false;
//  if(x<y && y<z)||(x>y && y>z) {isOrdered = true;}
//  return isOrdered;
//  }

//Assignment #3 part 4
import javax.swing.JOptionPane;
Stirng input = JOptionPane.showInputDialog(
"USER PROMP");
println(input);

if(input.length()<1) {
  System.out.println("No name was entered.");}
  else if (input.length() > 60) {
    System.out.println("This is too long to be a name");}
    else if (input.compareTo("Dr. Kelley") == 0)
    System.out.println("Excellent");
    else 
      System.out.println ("Hello" +input" "!");
    
