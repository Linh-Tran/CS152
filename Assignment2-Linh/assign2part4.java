//Linh Tran
//August 21, 2013
//Fall 2103, CS152L.002
//Assignment 2 part 4
import javax.swing.JOptionPane;
public class assign2part4
{
  
  public static void main(String[] args)
  {
    //Prompts user to enter name
    String input = JOptionPane.showInputDialog(
    "USER PROMPT");
   
   //If input is null or empty, then display error message, "No name entered".
   if (input == null || input.equals (""))
   {  
     JOptionPane.showMessageDialog(null,
         "No name entered",
         "Inane error",
         JOptionPane.ERROR_MESSAGE);
   }
   //If input is Dr.Kelly, then display message, "Look how excellent this code
   //is Dr.Kelly!".
   else if (input.equals("Dr.Kelly"))
   {
     JOptionPane.showMessageDialog(null, 
         "Look how excellent this code is Dr. Kelley!");
   }
   //If input length is > 60 display error message, "That is way too long for a
   //name".
   else if (input.length()>= 60) 
   {
     JOptionPane.showMessageDialog(null,
         "That is too long to be a name",
         "Inane error",
         JOptionPane.ERROR_MESSAGE);
     System.exit(0);
   }
   //If pass through all conditions display, "Hello NAME".
   else 
     JOptionPane.showMessageDialog(null, "Hello " + (input.toUpperCase()));
   
     
     

  }

}
