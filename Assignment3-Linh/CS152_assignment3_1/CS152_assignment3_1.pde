//Linh Tran
//August 21, 2013
//Fall 2103, CS152L.002 
//Assignment 3: Part 1
import javax.swing.JOptionPane;

//Ask user for input N steps
String inputN = JOptionPane.showInputDialog(
    "Enter the number of steps the walker will take");
    
   //if user enter nothing show error dialog 
   if (inputN == null || inputN.equals (""))
   {  
     JOptionPane.showMessageDialog(null,
         "No number entered",
         "Inane error",
         JOptionPane.ERROR_MESSAGE);
         System.exit(0);
   }
   //Change string into int
   int N = Integer.parseInt(inputN);
   System.out.println ("N = " + N);
   int count = 0; 
   int xCoord = 0, yCoord = 0;
   float x=0, y=0;
   float r=0;
   
   //loop calculates cycle through and pick random number N times
   while ( count < N)
   {

    r= random(1);//random between 0-1
    xCoord = round(x);//round the x & y
    yCoord = round(y);
    if     (r< 0.25) x--;//west	
    else if(r< 0.50) x++;//east
    else if(r< 0.75) y--;//north
    else if(r< 1.00) y++;//south
    System.out.println("("+ xCoord + "," + yCoord + ")");
    count = count + 1;
   }
    double Distance= 0;//distance formula
    Distance = Math.sqrt(xCoord * xCoord + yCoord * yCoord);
    System.out.println("Distance = " + Distance);
