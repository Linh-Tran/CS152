//Linh Tran
//August 21, 2013
//Fall 2103, CS152L.002 
//Assignment 1: Part 2

String printString; //declare string called printString

String minus; //declare string minus
minus = "- "; //instantiate minus "-"

String plus; //declare string plus
plus = "+ "; //instantiate plus "+"

String equal; //declare string equal
equal = " = "; //instantiate equal "="

Integer yearBorn; //declare integer yearBorn
yearBorn = 1994; //initialize yearBorn to 1994

Integer currentYear; //declare integer currentYear
currentYear = 2013; //initialize currentYear to 2013

Integer age; //declare integer age
age = 19; //initialize age to 19

//Prints: 
//1994
//+ 19 = 2013
System.out.println(yearBorn); 
System.out.print(plus + age + equal);
System.out.println(yearBorn + age);

//Prints:
//2013
//- 19 = 1994   
System.out.println(currentYear);
System.out.print (minus + age + equal);
System.out.print (currentYear - age);
















