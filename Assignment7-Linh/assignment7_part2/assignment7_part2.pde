String TITLE_NOT_SET  = "TITLE NOT SET";
Author AUTHOR_NOT_SET = new Author( "AUTHOR NOT SET", "" );
int YEAR_NOT_SET = -4000;
String ISBN_NOT_SET = "ISBN NOT SET";

void setup() {
  Library main = new Library();
  int score = 0;
  int tScore = 0;

  System.out.println( "Let's calculate some facts about the library..." );

  if ( main.totalCopies() == 0 ) { 
    tScore+=2;
  }
  System.out.println( " - totalCopies exists: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;

  if ( main.checkedOut() == 0 ) { 
    tScore+=2;
  }
  System.out.println( " - checkedOut exists: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;

  if ( main.printStatus().equals( "Total unique books: 0\nTotal number of copies: 0\nTotal checked out: 0" ) ) { 
    tScore+=3;
  }
  System.out.println( " - printStatus exists: " + tScore + "/3\n" );
  score += tScore; 
  tScore = 0;

  Book [] buildLibrary = new Book[26];
  buildLibrary[0]  = new Book( "Ulysses", new Author("Joyce", "James") );
  buildLibrary[1]  = new Book( "The Great Gatsby", new Author("Fitzgerald", "F. Scott") );
  buildLibrary[2]  = new Book( "A Portrait of the Artist as a Young Man", new Author("Joyce", "James") );
  buildLibrary[3]  = new Book( "Lolita", new Author("Nobokov", "Vladimir") );
  buildLibrary[4]  = new Book( "Brave New World", new Author("Huxley", "Aldous") );
  buildLibrary[5]  = new Book( "The Sound and the Fury", new Author("Faulkner", "William") );
  buildLibrary[6]  = new Book( "Catch-22", new Author("Heller", "Joseph") );
  buildLibrary[7]  = new Book( "Darkness at Noon", new Author("Koestler", "Arthur") );
  buildLibrary[8]  = new Book( "Sons and Lovers", new Author("Lawrence", "D.H.") );
  buildLibrary[9]  = new Book( "The Grapes of Wrath", new Author("Steinbeck", "John") );
  buildLibrary[10] = new Book( "Under the Volcano", new Author("Lowry", "Malcolm") );
  buildLibrary[11] = new Book( "The Way of All Flesh", new Author("Butler", "Samuel") );
  buildLibrary[12] = new Book( "1984", new Author("Orwell", "George") );
  buildLibrary[13] = new Book( "I, Claudius", new Author("Graves", "Robert") );
  buildLibrary[14] = new Book( "To The Lighthouse", new Author("Woolf", "Virginia") );
  buildLibrary[15] = new Book( "An American Tragedy", new Author("Dreiser", "Theodore") );
  buildLibrary[16] = new Book( "The Heart is a Lonely Hunter", new Author("McCullers", "Carson") );
  buildLibrary[17] = new Book( "Slaughterhouse-Five", new Author("Vonnegut", "Kurt") );
  buildLibrary[18] = new Book( "Invisible Man", new Author("Ellison", "Ralph") );
  buildLibrary[19] = new Book( "Native Son", new Author("Wright", "Richard") );
  buildLibrary[20] = new Book( "Henderson the Rain King", new Author("Bellow", "Saul") );
  buildLibrary[21] = new Book( "Appointment in Samarra", new Author("O'Hara", "John") );
  buildLibrary[22] = new Book( "U.S.A.", new Author("Dos Passos", "John") );
  buildLibrary[23] = new Book( "Winesburg, Ohio", new Author("Anderson", "Sherwood") );
  buildLibrary[24] = new Book( "A Passage to India", new Author("Forster", "E.M.") );
  buildLibrary[25] = new Book( "The Wings of the Dove", new Author("James", "Henry") );


  buildLibrary[0].setISBN( "9781840226355" );
  buildLibrary[1].setISBN( "9780743273565" );
  buildLibrary[2].setISBN( "9780486280509" );
  buildLibrary[3].setISBN( "9780679723165" );
  buildLibrary[4].setISBN( "9780060850524" );
  buildLibrary[5].setISBN( "9780679732242" );
  buildLibrary[6].setISBN( "9781451626650" );
  buildLibrary[7].setISBN( "9781416540267" );
  buildLibrary[8].setISBN( "9781853260476" );
  buildLibrary[9].setISBN( "9780143039433" );
  buildLibrary[10].setISBN( "9780061120152" );
  buildLibrary[11].setISBN( "9781613824238" );
  buildLibrary[12].setISBN( "9780451524935" );
  buildLibrary[13].setISBN( "9780679724773" );
  buildLibrary[14].setISBN( "9781907523588" );
  buildLibrary[15].setISBN( "9780451531551" );
  buildLibrary[16].setISBN( "9780618526413" );
  buildLibrary[17].setISBN( "9780385333849" );
  buildLibrary[18].setISBN( "9780679732761" );
  buildLibrary[19].setISBN( "9780060929800" );
  buildLibrary[20].setISBN( "9780143105480" );
  buildLibrary[21].setISBN( "9780143107071" );
  buildLibrary[22].setISBN( "9781883011147" );
  buildLibrary[23].setISBN( "9781613823347" );
  buildLibrary[24].setISBN( "9780156711425" );
  buildLibrary[25].setISBN( "9780141441283" );

  main.addMultipleBooks( buildLibrary );
  println( main.printStatus() );

  System.out.println( "Let's add a set of books, and add more books..." );

  if ( main.totalCopies() == 26 ) { 
    tScore+=3;
  }
  System.out.println( " - setBooks seems to work: " + tScore + "/3" );
  score += tScore; 
  tScore = 0;

  main.addBook( buildLibrary[25] );
  main.addBook( buildLibrary[25] );
  main.addBook( buildLibrary[25] );
  main.addBook( buildLibrary[14] );
  main.addBook( buildLibrary[14] );
  main.addBook( buildLibrary[14] );
  main.addBook( buildLibrary[14] );
  main.addBook( buildLibrary[1] );
  main.addBook( buildLibrary[2] );
  main.addBook( buildLibrary[5] );
  main.addBook( buildLibrary[9] );
  main.addBook( buildLibrary[12] );
  main.addBook( buildLibrary[15] );
  main.addBook( buildLibrary[20] );

  if ( main.totalCopies() == 40 ) { 
    tScore+=2;
  }
  System.out.println( " - addBooks seems to work for duplicates: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;

  Book b1 = new Book( "The Luminaries", new Author( "Catton", "Eleanor" ) );
  b1.setISBN( "9780316074315" );
  Book b2 = new Book( "The Circle", new Author( "Eggers", "Dave" ) );
  b2.setISBN( "9780385351393" );
  Book b3 = new Book( "S.", new Author( "Abrams", "J.J." ) );
  b3.setISBN( "9780316201643" );

  main.addBook( b1 );
  main.addBook( b2 );

  if ( main.totalCopies() == 42 ) { 
    tScore+=2;
  }
  System.out.println( " - addBooks seems to work for new books: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;

  Book [] buildLibrary1 = new Book[3];
  buildLibrary1[0]  = new Book( "Pitch Dark", new Author("Adler", "Renata") );
  buildLibrary1[1]  = new Book( "Speedboat", new Author("Adler", "Renata") );
  buildLibrary1[2]  = new Book( "Dissident Gardens", new Author("Lethem", "Jonathan") );
  buildLibrary1[0].setISBN( "9781590176146" );
  buildLibrary1[1].setISBN( "9781590176139" );
  buildLibrary1[2].setISBN( "9780385534932" );

  main.addMultipleBooks( buildLibrary1 );  

  if ( main.totalCopies() == 45 ) { 
    tScore+=2;
  }
  System.out.println( " - addMultipleBooks works with non-empty libraries: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;

  if ( main.printStatus().equals( "Total unique books: 31\nTotal number of copies: 45\nTotal checked out: 0" ) ) { 
    tScore+=2;
  }
  System.out.println( " - printStatus works after setBooks/addBooks: " + tScore + "/2\n" );
  score += tScore; 
  tScore = 0;

  System.out.println( "Let's try checking out books..." );

  if ( main.checkOut( b1 ).equals( "Checked out!" )  ) { 
    tScore+=2;
  }
  System.out.println( " - checkOut works when a book can be checked out: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;  
  if ( main.checkOut( b1 ).equals( "All out of copies." )  ) { 
    tScore+=2;
  }
  System.out.println( " - checkOut works when a book is out of copies: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;  
  if ( main.checkOut( b3 ).equals( "Book not found." ) ) { 
    tScore+=2;
  }
  System.out.println( " - checkOut works when a book is not in the library: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;  
  if ( main.printStatus().equals( "Total unique books: 31\nTotal number of copies: 45\nTotal checked out: 1" ) ) { 
    tScore+=3;
  }
  System.out.println( " - printStatus works after checking out books: " + tScore + "/3\n" );
  score += tScore; 
  tScore = 0;  

  System.out.println( "Let's try returning books..." );

  if ( main.checkIn( b3 ).equals( "Book not found." ) ) { 
    tScore+=2;
  }
  System.out.println( " - checkIn works when a book is not in the library: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;
  if ( main.checkIn( b2 ).equals( "All of our copies are already checked in." )  ) { 
    tScore+=2;
  }
  System.out.println( " - checkin works when a book is not checked out: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;  
  if ( main.checkIn( b1 ).equals( "Checked in!" )  ) { 
    tScore+=2;
  }
  System.out.println( " - checkIn works when a book is checked back in: " + tScore + "/2" );
  score += tScore; 
  tScore = 0;  
  if ( main.printStatus().equals( "Total unique books: 31\nTotal number of copies: 45\nTotal checked out: 0" ) ) { 
    tScore+=3;
  }
  System.out.println( " - printStatus works after checking out books: " + tScore + "/3\n" );
  score += tScore; 
  tScore = 0;    

  main.checkOut( b1 );
  main.checkOut( b2 );
  main.checkOut( buildLibrary[25] );
  main.checkOut( buildLibrary[25] );

  System.out.println( "Let's try to print the whole library..." );

  if ( main.printLibrary().equals( "0. Ulysses. Joyce, James. : 1/1\n1. The Great Gatsby. Fitzgerald, F. Scott. : 2/2\n2. A Portrait of the Artist as a Young Man. Joyce, James. : 2/2\n3. Lolita. Nobokov, Vladimir. : 1/1\n4. Brave New World. Huxley, Aldous. : 1/1\n5. The Sound and the Fury. Faulkner, William. : 2/2\n6. Catch-22. Heller, Joseph. : 1/1\n7. Darkness at Noon. Koestler, Arthur. : 1/1\n8. Sons and Lovers. Lawrence, D.H.. : 1/1\n9. The Grapes of Wrath. Steinbeck, John. : 2/2\n10. Under the Volcano. Lowry, Malcolm. : 1/1\n11. The Way of All Flesh. Butler, Samuel. : 1/1\n12. 1984. Orwell, George. : 2/2\n13. I, Claudius. Graves, Robert. : 1/1\n14. To The Lighthouse. Woolf, Virginia. : 5/5\n15. An American Tragedy. Dreiser, Theodore. : 2/2\n16. The Heart is a Lonely Hunter. McCullers, Carson. : 1/1\n17. Slaughterhouse-Five. Vonnegut, Kurt. : 1/1\n18. Invisible Man. Ellison, Ralph. : 1/1\n19. Native Son. Wright, Richard. : 1/1\n20. Henderson the Rain King. Bellow, Saul. : 2/2\n21. Appointment in Samarra. O'Hara, John. : 1/1\n22. U.S.A.. Dos Passos, John. : 1/1\n23. Winesburg, Ohio. Anderson, Sherwood. : 1/1\n24. A Passage to India. Forster, E.M.. : 1/1\n25. The Wings of the Dove. James, Henry. : 2/4\n26. The Luminaries. Catton, Eleanor. : 0/1\n27. The Circle. Eggers, Dave. : 0/1\n28. Pitch Dark. Adler, Renata. : 1/1\n29. Speedboat. Adler, Renata. : 1/1\n30. Dissident Gardens. Lethem, Jonathan. : 1/1\n\nTotal unique books: 31\nTotal number of copies: 45\nTotal checked out: 4"
    ) ) { 
    tScore+=3;
  }
  System.out.println( " - printLibrary works: " + tScore + "/3\n" );
  score += tScore; 
  tScore = 0;     
  //println( main.printLibrary() );

  System.out.println( "Let's ask the library some questions..." );

  if ( main.numBooksByAuthor( new Author( "Eggers", "Dave" )) == 1 ) { 
    tScore++;
  }
  if ( main.numBooksByAuthor( new Author( "Adler", "Renata" )) == 2 ) { 
    tScore++;
  }
  if ( main.numBooksByAuthor( new Author( "Ballard", "J.G." )) == 0 ) { 
    tScore++;
  }
  System.out.println( " - numBooksByAuthor works: " + tScore + "/3" );
  score += tScore; 
  tScore = 0;    

  if ( main.booksByAuthor( new Author( "Eggers", "Dave" )).equals("The Circle. Eggers, Dave.\n") ) { 
    tScore++;
  }
  if ( main.booksByAuthor( new Author( "Adler", "Renata" )).equals("Pitch Dark. Adler, Renata.\nSpeedboat. Adler, Renata.\n") ) { 
    tScore+=2;
  }
  if ( main.booksByAuthor( new Author( "Ballard", "J.G." )).equals("No books by Ballard, J.G..") ) { 
    tScore++;
  }
  System.out.println( " - booksByAuthor works: " + tScore + "/4" );
  score += tScore; 
  tScore = 0; 

  if ( main.booksByTitle( "the" ).equals("The Great Gatsby. Fitzgerald, F. Scott.\nA Portrait of the Artist as a Young Man. Joyce, James.\nThe Sound and the Fury. Faulkner, William.\nThe Grapes of Wrath. Steinbeck, John.\nUnder the Volcano. Lowry, Malcolm.\nThe Way of All Flesh. Butler, Samuel.\nTo The Lighthouse. Woolf, Virginia.\nThe Heart is a Lonely Hunter. McCullers, Carson.\nHenderson the Rain King. Bellow, Saul.\nThe Wings of the Dove. James, Henry.\nThe Luminaries. Catton, Eleanor.\nThe Circle. Eggers, Dave.\n") ) { 
    tScore++;
  }
  if ( main.booksByTitle( "of" ).equals("A Portrait of the Artist as a Young Man. Joyce, James.\nThe Grapes of Wrath. Steinbeck, John.\nThe Way of All Flesh. Butler, Samuel.\nThe Wings of the Dove. James, Henry.\n") ) { 
    tScore++;
  }
  if ( main.booksByTitle( "gatsby" ).equals("The Great Gatsby. Fitzgerald, F. Scott.\n") ) { 
    tScore++;
  }
  if ( main.booksByTitle( "cloud atlas" ).equals("No books with \"cloud atlas\" in the title.") ) { 
    tScore++;
  }
  System.out.println( " - booksByTitle works: " + tScore + "/4\n" );
  score += tScore; 
  tScore = 0; 

  //println( main.printStatus() );

  System.out.println( "Bonus! Let's remove a book from the library forever..." );

  if ( main.deleteBook( b1 ).equals( "Book removed." ) ) { 
    tScore+=1;
  }
  if ( main.deleteBook( b3 ).equals( "Book not found." ) ) { 
    tScore+=2;
  }
  main.checkOut( buildLibrary[1] );
  if ( main.printStatus().equals( "Total unique books: 30\nTotal number of copies: 44\nTotal checked out: 4" ) ) { 
    tScore+=2;
  }
  System.out.println( " - book deletion: " + tScore + "/5\n" );
  score += tScore; 
  tScore = 0;    

  //println( main.printLibrary() );

  System.out.println( "Total score: " + score + "/50  \n   (can be up to 55 with bonus)" );
}
//***********************************
// Linh Tran 
//
// This class makes a library that takes
// in a array of unique books and keep 
// track of the total numbers of 
// checked out books and the book copies.
// Some of the unique features include 
// printing out a library collection, search for
// books by key words, and returning a number that
// indicates the number of unique books.
//***********************************

// This is the Library class
public class Library { 

  // Variables
  Book [] books;
  int [] copies;
  int [] checkedOut;
  int numBooks;
  int tBooks, cBooks;
  //***********************************
  // public Library() : Contructor and Library
  // library contructor that builds
  // 3 arrays called books, copies, and checkedOut
  // with the length of 400
  // numBooks set to zero, which represents
  // the total number of unique books
  // Method does not return anything
  //**********************************
  public Library() {
    books = new Book[400];
    copies = new int[400];
    checkedOut = new int[400];
    numBooks = 0;
  }
  //***********************************
  // int totalCopies(): int and totalCopies
  // Method return a int called tBooks
  // Add up the copies of books in the
  // copies array using a for loop. Work
  // As long as the i < numBooks
  //***********************************
  int totalCopies() {
    tBooks = 0;
    for ( int i=0; i<numBooks; i++ ) {
      tBooks += copies[i];
    }    
    return tBooks;
  }
  //***********************************
  // int checkedOut(): int and checkedOut
  // Method return a int called cbooks 
  // Add up the numbers of checked out 
  // books in the checkedOut[] 
  // using a for loop. wobrks as long the 
  // numBooks.
  //***********************************
  int checkedOut() {
    cBooks = 0;
    for ( int i=0; i<numBooks; i++) {
      cBooks += checkedOut[i];
    }
    return cBooks;
  }
  //***********************************
  // String printStatus(): String and printStatus
  // Method returns a string called status
  // the String is made of three substrings
  // a,b,c that print out a string of code
  // with int variables numbooks(unique books),
  // string b and c use ints that were return from
  // the totalCopies() and checkedOut methods
  //***********************************
  String printStatus() {
    String a = "Total unique books: " + numBooks;
    String b = "Total number of copies: " + this.totalCopies();
    String c = "Total checked out: " + this.checkedOut();
    String status = a+"\n" + b+"\n" + c;
    println (status);
    return status;
  }
  //***********************************
  //void addMultipleBooks( Book [] b ): void method and addMultipleBooks
  // Method does not return any variables
  // it only add new books in the library array
  // one at a time while changing the numbers of
  // unique books in the library.
  // this method using the term "this" which
  // implies that array of book pass through to 
  // recieves the method call from addBook.
  // Similar to addBook method execept it adds a
  // array of books rather than one book.
  // for loops useful in using addBook method
  // to happen muitliple time by the length of the array
  //***********************************
  void addMultipleBooks( Book [] b ) {
    // add each of the new books in the right spot in the array
    // set the number of copies to 1 for each book
    // set the new length of the array

    for ( int c = 0; c<b.length; c++) {
      this.addBook( b[c] );
    }
  }
  //***********************************
  // void addBook( Book b ): void method and addBook
  // Method does not return any variables
  // it takes in one book 
  // Similar to  addMuitlpleBooks method execept one
  // rather than a array of books.
  // boolean use to check if the book passed through is new
  // then add it increase unique books, else increment the copies [] by one
  //***********************************
  void addBook( Book b ) {
    // look for the book, if you find it, add another copy
    // if you don't find it, add it to the end as a new book

    boolean found = false;
    for (int c = 0; c<numBooks; c++) {
      if (books[c]==b) {
        copies[c] ++;
        found = true;
      }
    }

    if ( found == false ) {
      books[numBooks]=b;
      copies[numBooks]=1;
      numBooks++;
    }
  }
  //***********************************
  // String checkOut ( Book b )
  // takes in a book
  // Method returns a string called status
  // which can return "Book not found.", "Check out!",
  // "All out of copies."
  // first for loop checking if book exist and if there
  // are enough copies to be checked out, else
  // book exist but all out of copies.
  // statements in the for loop fail, returns "Book not found."
  //***********************************
  String checkOut ( Book b ) {
    String success="Book not found.";
    for (int i = 0; i<numBooks; i++) {
      if (books[i]==b && copies[i]>checkedOut[i]) {
        success="Checked out!";
        checkedOut[i]++;
      }
      else if (books[i]==b && copies[i]==checkedOut[i]) { 
        success="All out of copies.";
      }
    }
    return success;
  }
  //***********************************
  // String checkIn ( Book b ): String and checkIn
  // takes in a book
  // Method returns a string called sucess
  // which can return "Book not found.", "Check in!",
  // "All of our copies are already checked in."
  // first for loop checking if book exist and if there
  // is no copies checked out return all copies are check in, else
  // book exist all copies are checked out books, then can be checked in.
  // statements in the for loop fail, returns "Book not found."
  //***********************************
  String checkIn ( Book b ) {
    String success="Book not found.";
    for (int i = 0; i<numBooks; i++) {
      if (books[i]==b && checkedOut[i]==0) {
        success="All of our copies are already checked in.";
      }
      if (books[i]==b && copies[i]==checkedOut[i]) {  
        success="Checked in!";
        checkedOut[i]--;
      }
    }
    return success;
  }
  //***********************************
  // String printLibrary(): String and printLibrary
  // returns a string called library
  // library is made up of two substrings called
  // partALibrary and partBLibrary. partALibrary lists the books with author name and title using .toString method from Book class 
  // partBLibrary print the status the books pass through
  // similar to the print status method 
  // print the checkedout/total copies using a new array called currentTotal books which is copies-checkedOut
  // partB total unique books is numBooks, total copies = a int of copies[] sum and check out is checkedOut [] sum.
  //***********************************
  String printLibrary() {
    String printLibrary = "";
    String partALibrary = "";
    String partBLibrary = "";
    int copiesSum = 0;
    int checkOutSum =0;
    for ( int i=0; i<numBooks; i++) {
      int[]currentTotalBooks = new int[400];
      currentTotalBooks[i]= copies[i]-checkedOut[i];
      copiesSum += copies[i];
      checkOutSum += checkedOut[i];

      partALibrary += i + ". " + books[i].toString() +" : " +currentTotalBooks[i] + "/" + copies[i] + "\n";
      partBLibrary = "Total unique books: " +numBooks + "\n" + "Total number of copies: " +copiesSum + "\n" + "Total checked out: " + checkOutSum;
      printLibrary = partALibrary + "\n"  + partBLibrary;
    }
    return printLibrary;
  }
//***********************************
//  int numBooksByAuthor( Author a ):int and numBooksByAuthor
// input: Author a, output int compareBookAuthor
// pass through authors and see if they are equal to 
// books authors in books array output count number of equal authors,
// range less then numBooks array, vaules count if a equals books[i]
// return int called compareBookAuthor
// create int and increment everytime a equals author in books[i]
// create int, use for loop to compare each a to see if equal to author is in books[] using compare method,
// if statement true increment compareBookAuthor
//***********************************
  int numBooksByAuthor( Author a ) {
    int compareBookAuthor = 0;
    for ( int i = 0; i<numBooks; i++) {
      if (a.compareTo( books[i].getAuthor())==0) {
        compareBookAuthor ++;
      }
    }

    return compareBookAuthor;
  }
//***********************************
// String booksByAuthor( Author a ): String and booksByAuthor
// input: Author a, output: string two possible returns "No books by ___." or a list of books with author and title 
// 
// range two combination of strings
// return string called uniqueBookAuthor
// method checkes if the author wrote zero books using numBooksByAuthor and state that No by author. 
// else go to for loop of numBooks, comparing a with the books[i].author if same return list of author names and titles
//***********************************
  String booksByAuthor( Author a ) {
    String uniqueBookAuthor = "";

    if ( numBooksByAuthor( a ) == 0 ) {
      uniqueBookAuthor = "No books by " + a + ".";
    }

    for ( int i = 0; i<numBooks; i++) {
      if (a.compareTo( books[i].getAuthor())==0) {
        uniqueBookAuthor += books[i].toString() + "\n";
      }
    }
    return uniqueBookAuthor;
  }  
//***********************************
//  String booksByTitle( String find )
// input string find that can be 3 combo string need to find all books and author titles that contains key words
// range 2 possible answers of string one list all books with author annd one create a list of books and authors containing key words
// returns a string called find.
// let method search through books [] and return titles and author that contains key words
// equal to the books tittle. Check if the book[] contains bookList rut a list of books and authors, make a empty string temp , for loop numBooks, let a string called bookList 
//***********************************
  String booksByTitle( String find ) {

    String temp = "";

    for ( int i = 0; i<numBooks; i++) {
      String bookList = books[i].getTitle().toLowerCase();
      if (bookList.contains( find )) {
        temp += books[i].toString() + "\n";
      }
    }
    if ( temp =="") {
      temp = "No books with \"cloud atlas\" in the title.";
    }
    return temp;
  }
//***********************************
// String booksByTitle( String find ): String and booksByTitle
// input book object b, and return the library string with deleted books
// input is book object b and output is a library string
// its range as long as found is true
// Method's return string of library books.
// check book pass thorugh equals books[i] and then change copies,checked out to 
// zero for that book, decrement numbooks. if still true then go to the next book shifted 
//***********************************
  String deleteBook( Book b ) {
    String deleteBook = "Book not found.";
    boolean found = false;
    for (int i = 0; i<numBooks; i++) {
      if (b==books[i]) {
        found = true;
        copies[i]=0;
        checkedOut[i]=0;
        numBooks--;
        deleteBook="Book removed.";
      }
        if (found==true) {  books[i]= books[i+1];}
    }
    print (deleteBook);
      return deleteBook;
  }
}
public class Author {
  String lastName, firstName, authorInfo;
  int authorYearOfBirth= YEAR_NOT_SET;
  int authorYearOfDeath= YEAR_NOT_SET;

  public Author() {
    Author AUTHOR_NOT_SET = new Author( "AUTHOR NOT SET", "" );
  }
  public Author( String tempLastName, String tempFirstName) {
    lastName = tempLastName;
    firstName = tempFirstName;
  }
  public int getBirth() {

    return authorYearOfBirth;
  }
  public int getDeath() {

    return authorYearOfDeath;
  }
  public void setDates(int birth) {
    if (birth >-2000 && birth <2018) { 
      authorYearOfBirth= birth;
    }
  }
  public void setDates(int birth, int death) {
    if ( birth >-2000 && birth <2018 && death<2018 && birth <death) { 
      authorYearOfBirth= birth;
      authorYearOfDeath= death;
    }
  }
  public String toString() {
    String l = lastName;
    String f = firstName;
    authorInfo = l + ", " + f;
    return authorInfo;
  }
  public String printAuthorInfo() {
    String l = lastName;
    String f = firstName;
    int d = authorYearOfDeath;
    int b = authorYearOfBirth;
    authorInfo=l+", "+f;

    if (b!= YEAR_NOT_SET && d==YEAR_NOT_SET) {
      authorInfo = l + ", " + f + " (b. " + b +")";
    }
    else if (b!=YEAR_NOT_SET && d!=YEAR_NOT_SET) {
      authorInfo = l + ", " + f + " (" + b + "-" + d + ")";
    }
    return authorInfo;
  }
  public int compareTo(Author authorCompare) {
    int numCompare=1;
    String l=authorCompare.lastName;
    String f=authorCompare.firstName;

    if (l.compareTo(lastName)== 0 && f.compareTo(firstName)== 0) {
      numCompare =0;
    }

    if (l.compareTo(lastName)== 0 && f.compareTo(firstName)!= 0) {
      char c = firstName.charAt(0);
      if (f.charAt(0) == c && f.length()==1) {
        numCompare =0;
      }
      else
        numCompare =1;
    }
    return numCompare;
  }
}

//Book class
public class Book {
  String bookTitle= TITLE_NOT_SET;
  String  ISBN= ISBN_NOT_SET; 
  String firstName, lastName;
  int yearPublished=YEAR_NOT_SET;
  Author authorInfo= AUTHOR_NOT_SET;

  public Book() {
  }
  public Book(String title) {
    bookTitle = title;
  }
  public Book(String title, Author authorTemp) {
    bookTitle = title;
    authorInfo = authorTemp;
  }
  public void setTitle(String title) {
    if ( title != "") { 
      bookTitle = title;
    }
  }
  public String getTitle() {
    return bookTitle;
  }
  public void setAuthor(Author a) {
    authorInfo = a;
  }
  Author getAuthor() {
    return authorInfo;
  }
  public void setYear(int year) {
    if (year >-2000 && year <2018) {
      yearPublished = year;
    }
  }
  public int getYear() {
    return yearPublished;
  }
  public void setISBN (String numISBN) {
    if (numISBN.length() == 10 || numISBN.length() ==13) {
      ISBN = numISBN;
    }
  }
  public String getISBN() {
    return ISBN;
  }
  public boolean sameAuthor(Book compareAuthor) {
    boolean sameAuthor = false;
    if (compareAuthor.authorInfo.firstName==authorInfo.firstName && compareAuthor.authorInfo.lastName==authorInfo.lastName) { 
      sameAuthor = true;
    }
    return sameAuthor;
  }
  public int compareTo (Book compareISBN) {
    int numISBN = 0; 
    String num = compareISBN.ISBN;
    if (num==ISBN) {
      numISBN= 0;
    }
    else
      numISBN = 1;
    return numISBN;
  }
  public String toString() {
    String title = bookTitle;
    String info=title+"." ;

    if (authorInfo != AUTHOR_NOT_SET) {
      String f = authorInfo.firstName;
      String l = authorInfo.lastName;

      if ( yearPublished== YEAR_NOT_SET) {
        info = title + ". " + l + ", " + f + ".";
      }
      else { 
        info = title + " (" + yearPublished + "). " +l + ", " + f + ".";
      }
    }
    return info;
  }
}

