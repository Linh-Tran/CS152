
// Linh Tran
// October 21, 2013
// Assignment #7 -- CS 152 -- Fall 2013
// Library using Classes and Methods

String TITLE_NOT_SET  = "TITLE NOT SET";
Author AUTHOR_NOT_SET = new Author( "AUTHOR NOT SET", "" );
int YEAR_NOT_SET = -4000;
String ISBN_NOT_SET = "ISBN NOT SET";

//Author class
public class Author{
  String lastName, firstName, authorInfo;
  int authorYearOfBirth= YEAR_NOT_SET;
  int authorYearOfDeath= YEAR_NOT_SET;
  
  public Author(){
    Author AUTHOR_NOT_SET = new Author( "AUTHOR NOT SET", "" );
  }
  public Author( String tempLastName, String tempFirstName){
    lastName = tempLastName;
    firstName = tempFirstName;
  }
  public int getBirth(){

    return authorYearOfBirth;
  }
  public int getDeath(){

    return authorYearOfDeath;
  }
  public void setDates(int birth){
    if (birth >-2000 && birth <2018)
     { authorYearOfBirth= birth;}
  }
  public void setDates(int birth, int death){
    if( birth >-2000 && birth <2018 && death<2018 && birth <death)
    { 
      authorYearOfBirth= birth;
      authorYearOfDeath= death;
    } 
    
  }
  public String toString(){
   String l = lastName;
   String f = firstName;
   authorInfo = l + ", " + f;
    return authorInfo;
  }
  public String printAuthorInfo(){
   String l = lastName;
   String f = firstName;
   int d = authorYearOfDeath;
   int b = authorYearOfBirth;
   authorInfo=l+", "+f;
   
   if(b!= YEAR_NOT_SET && d==YEAR_NOT_SET)
   {
       authorInfo = l + ", " + f + " (b. " + b +")";
   }
   else if(b!=YEAR_NOT_SET && d!=YEAR_NOT_SET)
   {
      authorInfo = l + ", " + f + " (" + b + "-" + d + ")";
   }
    return authorInfo;
  }
  public int compareTo(Author authorCompare){
    int numCompare=1;
    String l=authorCompare.lastName;
    String f=authorCompare.firstName;
    
    if (l.compareTo(lastName)== 0 && f.compareTo(firstName)== 0){
      numCompare =0;
    }
    
    if (l.compareTo(lastName)== 0 && f.compareTo(firstName)!= 0){
      char c = firstName.charAt(0);
      if(f.charAt(0) == c && f.length()==1)
      {
        numCompare =0;
      }
      else
      numCompare =1;
    }
    
    return numCompare;
  }
}

//Book class
public class Book{
  String bookTitle= TITLE_NOT_SET;
  String  ISBN= ISBN_NOT_SET; 
  String firstName, lastName;
  int yearPublished=YEAR_NOT_SET;
  Author authorInfo= AUTHOR_NOT_SET;
  
 
 
 public Book(){
 }
 public Book(String title){
   bookTitle = title;
 }
 public Book(String title, Author authorTemp){
   bookTitle = title;
   authorInfo = authorTemp;
   
 }
 public void setTitle(String title){
   if ( title != "")
   { bookTitle = title;}
 }
 public String getTitle(){
   return bookTitle;
 }
 public void setAuthor(Author a){
   authorInfo = a;
 }
 Author getAuthor(){
  return authorInfo;
 }
 public void setYear(int year){
   if (year >-2000 && year <2018)
   yearPublished = year;
 }
 public int getYear(){
   return yearPublished;
 }
 public void setISBN (String numISBN){
  if(numISBN.length() == 10 || numISBN.length() ==13){
    ISBN = numISBN; 
  }  
 }
 public String getISBN(){
   return ISBN;
 }
 public boolean sameAuthor(Book compareAuthor){
   boolean sameAuthor = false;
   if ( compareAuthor.authorInfo.firstName==authorInfo.firstName && compareAuthor.authorInfo.lastName==authorInfo.lastName)
   { sameAuthor = true;}
    return sameAuthor;
 }
 public int compareTo (Book compareISBN){
   int numISBN = 0; 
   String num = compareISBN.ISBN;
   if (num==ISBN)
   {
     numISBN= 0; 
   }
   else
    numISBN = 1;
   return numISBN;
 }
 public String toString(){
     String title = bookTitle;
     String info=title+"." ;
     
     if (authorInfo != AUTHOR_NOT_SET){
       String f = authorInfo.firstName;
       String l = authorInfo.lastName;
      
      if( yearPublished== YEAR_NOT_SET)
      {
           info = title + ". " + l + ", " + f + ".";      
        println(info); }
       else
       { 
       info = title + " (" + yearPublished + "). " +l + ", " + f + ".";
       } 
      
   }
    
   return info; 
 }
}
 

void setup() { 
  Book [] allTheBooks = new Book[30]; 
  int score = 6; int tScore = 0;
  
  //
  
  System.out.println( "Attempting constructors:" );
  
  Author a1 = new Author( "Ballard", "J.G." );
  Author a2 = new Author( "Eggers", "Dave" );
  Author a3 = new Author( "Catton", "Eleanor" );
  Author a4 = new Author( "Adler", "Renata" );
  
  System.out.println( "  - Author constructors seem functional:  3/3" );

  allTheBooks[0] = new Book();
  allTheBooks[1] = new Book( "The Circle" );
  allTheBooks[2] = new Book( "The Luminaries", a3 );
  allTheBooks[3] = new Book();
  allTheBooks[4] = new Book( "Pitch Dark" );
  allTheBooks[5] = new Book( "Speedboat" );
  allTheBooks[6] = new Book();
  allTheBooks[7] = new Book( "The Dissident Gardens" );

  System.out.println( "  - Book constructors seem functional:    3/3" );
  
  //
  
  System.out.println( "\nAttempting simple getters/setters:" );
  
  allTheBooks[0].setTitle( "The Complete Stories" );  
  if( "The Complete Stories".equals( allTheBooks[0].getTitle() ) ) { tScore++; }
  if( "The Circle".equals( allTheBooks[1].getTitle() ) ) { tScore++; }
  
  System.out.println( "  - getTitle/setTitle:                  " + tScore + "/2" );
  score += tScore; tScore = 0;
  
  allTheBooks[0].setAuthor( a1 );
  allTheBooks[1].setAuthor( a2 );
  if( a1 == allTheBooks[0].getAuthor() ) { tScore++; }
  if( a3 == allTheBooks[2].getAuthor() ) { tScore++; }
 
  System.out.println( "  - getAuthor/setAuthor:                " + tScore + "/2" );
  score += tScore; tScore = 0;
  
  allTheBooks[0].setYear( 2010 );
  allTheBooks[1].setYear( 2013 );
  if( 2010 == allTheBooks[0].getYear() ) { tScore++; }
  if( 2013 == allTheBooks[1].getYear() ) { tScore++; }
 
  System.out.println( "  - getYear/setYear:                    " + tScore + "/2" );
  score += tScore; tScore = 0;

  allTheBooks[1].setISBN( "9780385351393" );
  allTheBooks[2].setISBN( "9780316074315" );
  if( "9780385351393" == allTheBooks[1].getISBN() ) { tScore++; }
  if( "9780316074315" == allTheBooks[2].getISBN() ) { tScore++; }
 
  System.out.println( "  - getISBN/setISBN:                    " + tScore + "/2" );
  score += tScore; tScore = 0;


  a4.setDates( 1938 );
  a2.setDates( 1970 );
  a1.setDates( 1930, 2009 );
  if( 2009 == a1.getDeath() ) { tScore++; }
  if( 1930 == a1.getBirth() ) { tScore++; }
  if( 1970 == a2.getBirth() ) { tScore++; }
  if( YEAR_NOT_SET == a2.getDeath() ) { tScore++; }
 
  System.out.println( "  - author getBirth/getDeath/setDates:  " + tScore + "/4" );
  score += tScore; tScore = 0;
  // 

  System.out.println( "\nAttempting un-set values register correctly:" );
  
  if( YEAR_NOT_SET   == allTheBooks[2].getYear() ) { tScore++; print(1); }
  if( AUTHOR_NOT_SET == allTheBooks[3].getAuthor() ) { tScore++; print(2); }
  if( AUTHOR_NOT_SET == allTheBooks[4].getAuthor() ) { tScore++; print(3); }
  if( TITLE_NOT_SET  == allTheBooks[3].getTitle() ) { tScore++; print(4); }
  if( ISBN_NOT_SET   == allTheBooks[0].getISBN() ) { tScore++; print(5); }
 
  System.out.println( "  - un-set values:  " + tScore + "/5" );
  score += tScore; tScore = 0;  


  //

  System.out.println( "\nAttempting bad-value setters:" );

  allTheBooks[0].setYear( 2020 );
  if( 2010 == allTheBooks[0].getYear() ) { tScore+=2; }
  System.out.println( "  - year too far in the future rejected:  " + tScore + "/2" );
  score += tScore; tScore = 0;
  
  allTheBooks[0].setTitle( "" );
  if( "The Complete Stories" == allTheBooks[0].getTitle() ) { tScore+=2; }
  System.out.println( "  - empty title rejected:                 " + tScore + "/2" );
  score += tScore; tScore = 0;

  allTheBooks[0].setISBN( "38741" );
  if( ISBN_NOT_SET == allTheBooks[0].getISBN() ) { tScore+=2; }
  System.out.println( "  - ISBN of incorrect length rejected:    " + tScore + "/2" );
  score += tScore; tScore = 0;
 
  a1.setDates( -3000 );
  if( 1930 == a1.getBirth() ) { tScore+=2; }
  System.out.println( "  - year of birth in super past rejected: " + tScore + "/2" );
  score += tScore; tScore = 0;  

  a1.setDates( 1930, 1919 );
  if( 2009 == a1.getDeath() ) { tScore+=2; }
  System.out.println( "  - year of death before birth rejected:  " + tScore + "/2" );
  score += tScore; tScore = 0;  
  
  // 
  
  System.out.println( "\nComparisons:" );
  
  Author ax1 = new Author( "Catton", "Eleanor" );
  Author ax2 = new Author( "Catton", "J" );
  Author ax3 = new Author( "C", "Eleanor" );

  Author ax4 = new Author( "Catton", "E" );
  Author ax5 = new Author( "Catton", "Elizabeth" );
  
  if( a3.compareTo(ax1) == 0 ) { tScore++; }
  if( a3.compareTo(ax2) != 0 ) { tScore++; }
  if( a3.compareTo(ax3) != 0 ) { tScore++; }
  System.out.println( "  - author comparison tests:          " + tScore + "/3" );
  score += tScore; tScore = 0;
  
  if( a3.compareTo(ax4) == 0 ) { tScore+=2; }
  if( a3.compareTo(ax5) != 0 ) { tScore+=3; }
  System.out.println( "  - *bonus* author comparison tests:  " + tScore + "/5" );
  score += tScore; tScore = 0;
  
  
  allTheBooks[4].setAuthor( a4 );
  allTheBooks[5].setAuthor( a4 );
  if( allTheBooks[4].sameAuthor( allTheBooks[5] ) == true ) { tScore++; }
  if( allTheBooks[4].sameAuthor( allTheBooks[2] ) == false ) { tScore++; }
  System.out.println( "  - sameAuthor (across two books):    " + tScore + "/2" );
  score += tScore; tScore = 0;

  allTheBooks[6].setISBN( "9780316074315" );
  if( allTheBooks[6].compareTo( allTheBooks[5] ) != 0 ) { tScore++; }
  if( allTheBooks[6].compareTo( allTheBooks[2] ) == 0 ) { tScore++; }
  System.out.println( "  - comparing two books:              " + tScore + "/2" );
  score += tScore; tScore = 0;  
  
  // 
  
  System.out.println( "\nPrinting authors and books:" );
  String x1 = "Adler, Renata";
  String x2 = "Ballard, J.G.";
  if( x2.equals(allTheBooks[0].getAuthor().toString()) ) { tScore++; }
  if( x1.equals(allTheBooks[4].getAuthor().toString()) ) { tScore++; }
  System.out.println( "  - printing an author's name:         " + tScore + "/2" );
  score += tScore; tScore = 0;

  String x3 = "Catton, Eleanor";
  String x4 = "Ballard, J.G. (1930-2009)";
  String x5 = "Eggers, Dave (b. 1970)";
  if( x3.equals(allTheBooks[2].getAuthor().printAuthorInfo()) ) { tScore++; }
  if( x4.equals(allTheBooks[0].getAuthor().printAuthorInfo()) ) { tScore++; }
  if( x5.equals(allTheBooks[1].getAuthor().printAuthorInfo()) ) { tScore++; }
  System.out.println( "  - printing an author's name + info:  " + tScore + "/3" );
  score += tScore; tScore = 0;
  
  String b1 = "The Circle (2013). Eggers, Dave.";
  String b2 = "The Luminaries. Catton, Eleanor.";
  String b3 = "The Dissident Gardens.";
  if( b1.equals(allTheBooks[1].toString()) ) { tScore++; }
  if( b2.equals(allTheBooks[2].toString()) ) { tScore+=2; }
  if( b3.equals(allTheBooks[7].toString()) ) { tScore+=2; }
  System.out.println( "  - printing a book's name + info:     " + tScore + "/5" );
  score += tScore; tScore = 0;

  //
  
  System.out.println( allTheBooks[1] );
  
  System.out.println( "\nOverall Score: " + score + "/50  \n   (can be up to 55 with bonus)" ); 
}
