//Linh Tran
//August 21, 2013
//Fall 2103, CS152L.002
//Assignment 2 part 3
public class assign2part3
{

  public static void main(String[] args)
  {
    int x, y, z; //initialize x, y, z;
    x = 10; 
    y = 17;
    z = 49;

    boolean isOrdered = true; //define isOrdered boolean to true

    System.out.println("when x = 10" + " y = 17" + " z = 49");

    if (x < y && y < z) //check if x < y < z
    {
      System.out.print("x < y < z is ");
      System.out.println(isOrdered);
    }

    if (x > y && y > z) //check if x > y > z
    {
      System.out.print("x > y > z is ");
      System.out.println(isOrdered);
    }
    // part 2
    x = x + 30; //change x , y , z to 40, 30, 12
    y = y + 13;
    z = y - 37;
    System.out.println("when x = 40" + " y = 30" + " z = 12");

    if (x < y && y < z)
    {
      System.out.print("x < y < z is ");
      System.out.println(isOrdered);
    }

    if (x > y && y > z)
    {
      System.out.print("x > y > z is ");
      System.out.println(isOrdered);
    }
    // part 3
    x = x + 30; //change x value to 40
    System.out.println("when x = 30" + " y = 30" + " z = 12");

    if (x < y && y < z)
    {
      System.out.print("x < y < z is ");
      System.out.println(!isOrdered);
    }

    if (x > y && y > z)
    {
      System.out.print("x > y > z is ");
      System.out.println(!isOrdered);
    }
  }

}
