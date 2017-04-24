//Linh Tran
//August 21, 2013
//Fall 2103, CS152L.002 
//Assignment 3: Part 2

import javax.swing.JOptionPane;

//Ask user for N steps and T trials
String inputN = JOptionPane.showInputDialog(
    "Enter a number that is greater or equal to 1");
String inputT = JOptionPane.showInputDialog(
    "Enter the number of times you will measure the walker's distance");
    
   //If user enter no number print error 
   if (inputN == null || inputN.equals (""))
   {  
     JOptionPane.showMessageDialog(null,
         "No number entered",
         "Inane error",
         JOptionPane.ERROR_MESSAGE);
         System.exit(0);
   }
   
    if (inputT == null || inputT.equals (""))
   {  
     JOptionPane.showMessageDialog(null,
         "No number entered",
         "Inane error",
         JOptionPane.ERROR_MESSAGE);
         System.exit(0);
   }
   int N = Integer.parseInt(inputN);
   int T = Integer.parseInt(inputT);
   System.out.println("N = " + N );
   System.out.println("T = " + T);
   double totalDistance= 0;
   int count = 0, count2 = 0, xCoord = 0, yCoord = 0;
   float x=0, y=0, r=0;
   while (count2 < T)//loop through to find the totalDistance after T times
   {
     while ( count < N)//loop through to find the distance after N steps
     {
      r= random(1);
      xCoord = round(x);
      yCoord = round(y);
      if     (r< 0.25) x--;//west
      else if(r< 0.50) x++;//east
      else if(r< 0.75) y--;//north
      else if(r< 1.00) y++;//south
      count = count + 1;
     }
      double distance= 0;
      distance = Math.sqrt(xCoord * xCoord + yCoord * yCoord);
      totalDistance = distance + totalDistance;//store T* distances
      count2 = count2 +1;
   }
   double meanSqDist = totalDistance/T;//calculate the average distance
   System.out.println("mean sq. dist = " + meanSqDist);
