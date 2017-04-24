import javax.swing.JOptionPane;

String input = JOptionPane.showInputDialog(
    "Enter a number that is greater or equal to 1");
    
   if (input == null || input.equals (""))
   {  
     JOptionPane.showMessageDialog(null,
         "No number entered",
         "Inane error",
         JOptionPane.ERROR_MESSAGE);
         System.exit(0);
   }
   
   int N = Integer.parseInt(input);
   int count = 0; 
   int xCoord = 0, yCoord = 0;
   float x=0, y=0;
   float r=0;
   while ( count < N)
   {

    r= random(1);
    xCoord = round(x);
    yCoord = round(y);
    if     (r< 0.25) x--;
    else if(r< 0.50) x++;
    else if(r< 0.75) y--;
    else if(r< 1.00) y++;
    System.out.println("("+ xCoord + "," + yCoord + ")");
    count = count + 1;
   }
    double Distance= 0;
    Distance = Math.sqrt(xCoord * xCoord + yCoord * yCoord);
    System.out.println("Distance = " + Distance);
