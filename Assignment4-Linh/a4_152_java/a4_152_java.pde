// Linh Tran
// September 13, 2013
// Assignment #4 -- CS 152 -- Fall 2013
// Welcome to Methods

// This method should return the sum 
// of the two arguments it is given
int addTwo( int x, int y ) {
  int result = x+y;
  return result;
}


// This method should return true when 
// the argument x is less than 0
boolean isNegative( int x ) {
  boolean negative=false;
  if (x < 0)
  {
    negative = true;
  }
  return negative;
}


// This method should return true if the 
// argument x (String) contains the letter c
boolean containsC( String x ) {
  boolean contains = false;
  x = x.toLowerCase();
  if(x.contains("c"))
  {
    contains = true;
  }
  return contains;
}


// This method should return the location of the 
// first letter c present in argument x (String)
// If there is no c present return -1;
int findC( String x ) {
 int indexC;
 x= x.toLowerCase();
 indexC = x.indexOf("c");

  return indexC;
}


// This method returns a response based on the string input:
// "Apple" => "Orange"
// "Hello" => "Goodbye!"
// "Alexander" => "The Great"
// "Lady Gaga" => "I'm applauding, really."
// "Turing" => "Machine"
// "Special" => "\o/"
// Any other input should be responded to with:
// "I'm sorry Dave, I don't know how to respond to that." 
String responder( String input ) {
  int count = 0;
  String returnString = "I'm sorry Dave, I don't know how to respond to that.";

    if (input.equals("Apple")) {returnString=("Orange");}
    if (input.equals("Hello")) {returnString=("Goodbye!");}
    if (input.equals("Alexander")) {returnString=("The Great");}
    if (input.equals("Lady Gaga")) {returnString=("I'm applauding, really.");}
    if (input.equals("Turing")) {returnString=("Machine");}
    if (input.equals("Special")) {returnString=("\\o/");}
   
  return returnString;
}


// This method averages six POSITIVE integers
// ints which are negative or zero should not 
// be included in the average
// If all numbers are invalid, return -1
float averageSix( int a, int b, int c, int d, int e, int f ) {
  float sum =0.0;
  float average = 0.0;
  int count= 0; 
  if ( a>0){ sum = sum +a; count++;}
  if ( b>0){ sum = sum +b; count++;}
  if ( c>0){ sum = sum +c; count++;}
  if ( d>0){ sum = sum +d; count++;}
  if ( e>0){ sum = sum +e; count++;}
  if ( f>0){ sum = sum +f; count++;}
  average = sum /count;
  if (sum==0)
  {
    average =-1;
  }
  return average;
}



// Write a method called squareEvenIgnoreOdd that
// returns the square of even numbers and 
// returns odd numbers untouched.
// The method should have a single int argument
// and return an int
int squareEvenIgnoreOdd (int num) {
  if ( num % 2 == 0)
  {
    num = num * num;
  }
  return num;
}
  
  


// Write a method called calculatePayment
// that takes two arguments, an int meal
// which is the cost of a meal, and a float tip which
// represents the tip one would add to the bill.
// The method must return a float which equals how much 
// should be paid.
// int meal must be greater than 0
// float tip must be 0 or greater and .5 or less (50%)
// If either number is invalid, return -1;

float calculatePayment (int meal, float tip) {
  float cost = 0.0;
  float divide =0.0;
  if (meal > 0)
  {
    if ( tip == 0 || tip <= .5)
    {
     cost =  (tip+1) * meal;
     return cost;
    }
    else 
    cost =-1;
  }
  else 
  cost =-1;
  return cost;
}
    





// DON'T EDIT BELOW THIS LINE.
// I mean... you can. But please don't, huge hassle for us.
// This code calculates your methods completeness. Feel free to read it.

// Also if you want to use Eclipse you *must* change void setup()
// to the standard java main. Experiment at will.

void setup() {
  int completeness = 0;
  if( addTwo(2,3) == 5 ) { completeness++; } 
  if( addTwo(2,-3) == -1 ) { completeness++; }    
  if( isNegative(-3) ) { completeness++; }    
  if( !isNegative(2) ) { completeness++; }    
  if( !isNegative(0) ) { completeness++; }    
  if( containsC( "cat" ) ) { completeness++; }    
  if( !containsC( "dog" ) ) { completeness++; }    
  if( containsC( "EXCLAIMS!" ) ) { completeness++; } 
  if( findC( "cat" ) == 0 ) { completeness++; } 
  if( findC( "EXCLAIMS!" ) == 2 ) { completeness++; } 
  if( findC( "dog" ) == -1 ) { completeness++; } 
  if( findC( "abccCccC" ) == 2 ) { completeness++; } 
  if( responder( "Apple" ).equals( "Orange" ) ) { completeness++; } 
  if( responder( "Hello" ).equals( "Goodbye!" ) ) { completeness++; } 
  if( responder( "Alexander" ).equals( "The Great" ) ) { completeness++; } 
  if( responder( "Lady Gaga" ).equals( "I'm applauding, really." ) ) { completeness++; } 
  if( responder( "Turing" ).equals( "Machine" ) ) { completeness++; } 
  if( responder( "Special" ).equals( "\\o/" ) ) { completeness++; } 
  if( responder( "xxx" ).equals( "I'm sorry Dave, I don't know how to respond to that." ) ) { completeness++; } 
  if( averageSix( 12,13,12,13,12,13 ) == 12.5 ) { completeness++; } 
  if( averageSix( 0,0,0,0,0,0 ) == -1 ) { completeness++; } 
  if( averageSix( 0,0,15,0,-2,0 ) == 15 ) { completeness++; } 
  if( averageSix( 100,-3,4021,-2,13,-6 ) == 1378 ) { completeness++; } 
  if( squareEvenIgnoreOdd( 4 ) == 16 ) { completeness++; } 
  if( squareEvenIgnoreOdd( 0 ) == 0 ) { completeness++; } 
  if( squareEvenIgnoreOdd( 3 ) == 3 ) { completeness++; } 
  if( calculatePayment( 0, .3 ) == -1 ) { completeness++; } 
  if( calculatePayment( 10, .2 ) == 12.0 ) { completeness++; } 
  if( calculatePayment( 100, .6 ) == -1 ) { completeness++; } 
  if( calculatePayment( 120, .32 ) == 158.4 ) { completeness++; } 
    
  println( "Your program's completeness is currently: " + completeness + "/30" );
}

