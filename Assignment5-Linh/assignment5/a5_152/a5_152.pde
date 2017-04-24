import java.util.Arrays;

// Linh Tran    
// September 24, 2013
// Assignment #5 -- CS 152 -- Fall 2013
// Arrays and Methods


// This method should return the sum of the first
// and third arguments of array.
// [ X, _, Y, _, _, ... ] -> X + Y
// May assume the array input will have at least
// three items.
int addFirstAndThird( int [] inputArray ) {

  int X = inputArray[0];
  int Y = inputArray[2];
  int sum = X+Y;

  return sum; // <- replace these return statements, just here for compilation  
} // this ends addFirstAndThird


////////////////


// This method should return the length of the array
// Really. That's it.
int justTellMeTheLength( int [] inputArray ) {

  int lengthArray = inputArray.length;

  return lengthArray; // <- replace these return statements, just here for compilation  
} // this ends justTellMeTheLength


////////////////


// This method should return the sum of the first
// and third arguments of array.
// [ X, _, Y, _, _, ... ] -> X + Y
// This method must return -1 if the array does
// not have the necessary values to add
int addFirstAndThirdBetter( int [] inputArray ) {
  int sum = 0;
  int lengthArray = inputArray.length;
  if ( lengthArray >=3)
  {
    int X = inputArray[0];
    int Y = inputArray[2];
    sum = X + Y;
  }
  else
  sum = -1;

  return sum; // <- replace these return statements, just here for compilation
} // this ends addFirstAndThirdBetter


////////////////


// This method should return true if the 
// int array contains the number 5 as an element
// [ 3, 6, 10, 5, 19 ] => true
// [ 2, 984, 392145, 2 ] => false
boolean containsFive( int [] inputArray ) {
  
  boolean contain5 = false;
  int count = 0;
  while (count < inputArray.length)
  {
    int num = inputArray[count];
    if (num == 5) {contain5 = true;}
    count++;
  }
  
  return contain5; // <- replace these return statements, just here for compilation
} // this ends containsFive


////////////////


// This method should return true if the 
// int array contains the word "five" as an element
// [ "hello", "five" ] => true
// [ "fivefive", "what", "no" ] => false
boolean stringFive( String [] inputArray ) {

  boolean containFive = false;
  int count = 0;
  while ( count < inputArray.length)
  {
    String num = inputArray[count];
    if ( num.equals(("five")))
   {
     containFive = true;
   } 
    count ++;
  }

  return containFive; // <- replace these return statements, just here for compilation
} // this ends stringFive


////////////////


// This method should return true if the 
// int array contains the word "five" anywhere
// [ "hello", "five" ] => true
// [ "fivefive", "what", "no" ] => false
boolean stringFiveAnywhere( String [] inputArray ) {

  boolean contains5 = false;
  int count = 0;
  
  while ( count < inputArray.length)
 {
    if (inputArray[count].contains("five"))
   {
     contains5 = true;
   } 
    count ++;
 }

  return contains5; // <- replace these return statements, just here for compilation
} // this ends stringFiveAnywhere


////////////////


// This method should return the SAME array that is 
// input, except it should replace the second element
// with the number 1028
// You do not need to worry about error checking on short arrays
// [ 12, 155, 32, 0, 0, 12 ] => [ 12, 1028, 32, 0, 0, 12 ]
// [ 14, 109 ] => [ 14, 1028 ]
int [] replaceSecond1028( int [] inputArray ) {

  int count = 0;  
  while ( count < inputArray.length)
  {
    inputArray[1] = 1028;
    count ++;
  }

  return inputArray; // <- replace these return statements, just here for compilation
} // this ends replaceSecond1028


////////////////


// This method should return the SAME array that is 
// input, except it should replace every element that says
// "yes" with "no" element
// ["hi", "yes", "x", "yes", "this"] => ["hi", "no", "x", "no", "this"]
// ["what", "what"] => ["what", "what"]
String [] makeItANegativeArray( String [] inputArray ) {

  int count = 0;
  while ( count < inputArray.length)
  {
    if( inputArray[count] == "yes")
    {
      inputArray[count] = "no";
    }
    count++;
  }

  return inputArray; // <- replace these return statements, just here for compilation
} // this ends makeItANegativeArray


////////////////


// Add six to every number in the array, UNLESS
// that number is already six and return the array
// [ 3, 12, 392, 6, 0 ] => [ 9, 18, 398, 6, 6 ]
// [ 6, 6 ] => [ 6, 6 ]
int [] addSixExceptSix( int [] inputArray ) {

  int count = 0;
  while (count < inputArray.length)
  {
    if( inputArray[count] != 6 )
    {
      inputArray[count] = inputArray[count] + 6;
    }
    count++;
  }
    
  return inputArray; // <- replace these return statements, just here for compilation
} // this ends addSixExceptSix


////////////////









// DON'T EDIT BELOW THIS LINE.
// I mean... you can. But please don't, huge hassle for us.
// This code calculates your methods completeness. Feel free to read it.

void setup() {
  int completeness = 0;
  
  // addFirstAndThird
  int compCurrent = 0;
  int [] a = { 2, 3, 0 };
  int [] c = { 2, 5, -5 };
  int [] d = { 2, 3, 2, 8, 5, 6, 12 };
  if( addFirstAndThird( a ) == 2 ) { compCurrent++; } 
  if( addFirstAndThird( c ) == -3 ) { compCurrent++; }    
  if( addFirstAndThird( d ) == 4 ) { compCurrent++; }    
  println( "addFirstAndThird: " + compCurrent + "/" + 3 );
  completeness += compCurrent;
  
  // justTellMeTheLength
  compCurrent = 0;
  int [] b = { 2 };
  if( justTellMeTheLength( a ) == 3 ) { compCurrent++; } 
  if( justTellMeTheLength( c ) == 3 ) { compCurrent++; }    
  println( "justTellMeTheLength: " + compCurrent + "/" + 2 );
  completeness += compCurrent;

  // addFirstAndThirdBetter
  compCurrent = 0;
  if( addFirstAndThirdBetter( a ) == 2 ) { compCurrent++; } 
  if( addFirstAndThirdBetter( b ) == -1 ) { compCurrent++; }    
  if( addFirstAndThirdBetter( d ) == 4 ) { compCurrent++; }    
  println( "addFirstAndThirdBetter: " + compCurrent + "/" + 3 );
  completeness += compCurrent;

  // containsFive
  compCurrent = 0;
  if( !containsFive( b ) ) { compCurrent++; } 
  if( containsFive( c ) ) { compCurrent++; }    
  if( containsFive( d ) ) { compCurrent++; }    
  println( "containsFive: " + compCurrent + "/" + 3 );
  completeness += compCurrent;

  // stringFive
  compCurrent = 0;
  String [] s1 = { "five", "zero", "what,yes" };
  String [] s2 = { "fivefive", "zero", "yes", "not", "a", "thing", "5" };
  String [] s3 = { "yes", "yes", "yes", "5" };
  String [] s4 = { "notitfive" };
  if( stringFive( s1 ) ) { compCurrent++; } 
  if( !stringFive( s2 ) ) { compCurrent++; }    
  if( !stringFive( s3 ) ) { compCurrent++; }    
  if( !stringFive( s4 ) ) { compCurrent++; }    
  println( "stringFive: " + compCurrent + "/" + 4 );
  completeness += compCurrent;
  
  // stringFiveAnywhere
  compCurrent = 0;
  if( stringFiveAnywhere( s1 ) ) { compCurrent++; } 
  if( stringFiveAnywhere( s2 ) ) { compCurrent++; }    
  if( !stringFiveAnywhere( s3 ) ) { compCurrent++; }    
  if( stringFiveAnywhere( s4 ) ) { compCurrent++; }    
  println( "stringFiveAnywhere: " + compCurrent + "/" + 4 );
  completeness += compCurrent;
  
  // replaceSecond1028
  compCurrent = 0;
  int [] ax = { 2, 1028, 0 };
  int [] cx = { 2, 1028, -5 };
  int [] dx = { 2, 1028, 2, 8, 5, 6, 12 };
  if( Arrays.equals( replaceSecond1028( a ), ax ) ) { compCurrent++; } 
  if( Arrays.equals( replaceSecond1028( c ), cx ) ) { compCurrent++; }    
  if( Arrays.equals( replaceSecond1028( d ), dx ) ) { compCurrent++; }    
  println( "replaceSecond1028: " + compCurrent + "/" + 3 );
  completeness += compCurrent;
  
  // makeItANegativeArray
  compCurrent = 0;
  String [] s1x = { "five", "zero", "what,yes" };
  String [] s2x = { "fivefive", "zero", "no", "not", "a", "thing", "5" };
  String [] s3x = { "no", "no", "no", "5" };
  if( Arrays.equals( makeItANegativeArray( s1 ), s1x ) ) { compCurrent++; } 
  if( Arrays.equals( makeItANegativeArray( s2 ), s2x ) ) { compCurrent++; }    
  if( Arrays.equals( makeItANegativeArray( s3 ), s3x ) ) { compCurrent++; }    
  if( Arrays.equals( makeItANegativeArray( s4 ), s4 ) ) { compCurrent++; }    
  println( "makeItANegativeArray: " + compCurrent + "/" + 4 );
  completeness += compCurrent;

  // addSixExceptSix
  compCurrent = 0;
  a[1] = 3;  d[1] = 3;
  int [] a6 = { 8, 9, 6 };
  int [] d6 = { 8, 9, 8, 14, 11, 6, 18 };
  int [] e  = { 6, 6, 6, 6, 6, 6, 4,  6 };
  int [] e6 = { 6, 6, 6, 6, 6, 6, 10, 6 };
  int [] f  = { 6 };
  if( Arrays.equals( addSixExceptSix( a ), a6 ) ) { compCurrent++; } 
  if( Arrays.equals( addSixExceptSix( e ), e6 ) ) { compCurrent++; }    
  if( Arrays.equals( addSixExceptSix( d ), d6 ) ) { compCurrent++; }    
  if( Arrays.equals( addSixExceptSix( f ), f ) ) { compCurrent++; }    
  println( "addSixExceptSix: " + compCurrent + "/" + 4 );
  completeness += compCurrent;

  println( "Your program's completeness is currently: " + completeness + "/30" );
}

