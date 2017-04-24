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
  println( main.printStatus() );

  if ( main.printStatus().equals( "Total unique books: 30\nTotal number of copies: 44\nTotal checked out: 4" ) ) { 
    tScore+=2;
  }
  System.out.println( " - book deletion: " + tScore + "/5\n" );
  score += tScore; 
  tScore = 0;    

  println( main.printStatus() );

  System.out.println( "Total score: " + score + "/50  \n   (can be up to 55 with bonus)" );
}


// This is the Library class

public class Library {
  Book [] books;
  int [] copies;
  int [] checkedOut;
  int numBooks;

  public Library() {
    books = new Book[400];
    copies = new int[400];
    checkedOut = new int[400];
    numBooks = 0;
  }

  int totalCopies() {
    int totalCopies=0;
    for (int i=0; i<copies.length; i++) {
      totalCopies+=copies[i];
    }
    return totalCopies;
  }

  int checkedOut() {
    int checkedOut=0;
    for (int i=0; i<this.checkedOut.length; i++) {
      checkedOut+=this.checkedOut[i];
    }
    return checkedOut;
  }

  String printStatus() {
    String x="Total unique books: "+ numBooks;
    String y="Total number of copies: "+ this.totalCopies();
    String z="Total checked out: "+this.checkedOut();
    String status=x+"\n"+y+"\n"+z;
    //println(status);
    return status;
  }

  void addMultipleBooks( Book [] b ) {
    for (int c=0; c<b.length; c++) {   
      for (int i=0; i<numBooks; i++) {
        if (b[c]==books[i]) {
          copies[i]++;
        }
      }
      books[numBooks]=b[c];
      copies[numBooks]=1;
      numBooks=numBooks+1;
    }
  }

  void addBook(Book b) {
    boolean addBook=false;  
    for (int i=0; i<numBooks; i++) {
      if (b==books[i]) {
        copies[i]++;
        addBook=true;
      }
    }
    if (addBook==false) {
      books[numBooks]=b;
      copies[numBooks]=1;
      numBooks++;
    }
  }

  String checkOut ( Book b ) {
    String checkOut="Book not found.";

    for (int i=0; i<numBooks; i++) {
      if (books[i]==b && checkedOut[i]<copies[i]) {
        checkOut="Checked out!";
        checkedOut[i]++;
      }
      else if (books[i]==b && checkedOut[i]==copies[i]) {
        checkOut="All out of copies.";
      }
    }
    return checkOut;
  }

  String checkIn ( Book b ) {
    String checkIn="Book not found.";

    for (int i=0; i<numBooks; i++) {
      if (b==books[i] && checkedOut[i]==0) {
        checkIn="All of our copies are already checked in.";
      }
      else if (b==books[i] && checkedOut[i]!=0) {
        checkIn="Checked in!";
        checkedOut[i]--;
      }
    }
    return checkIn;
  }

  String printLibrary() {
    String printLibrary="";
    String x="";
    String y="";
    int uniqueBooks=0;
    int totalCopies=0;
    int totalCheckedOut=0;
    for (int i=0; i<numBooks; i++) {
      int [] currentCopies=new int[400];
      currentCopies[i]=copies[i]-checkedOut[i];
      totalCopies+=copies[i];
      totalCheckedOut+=checkedOut[i];

      x+=i+". "+books[i]+" : "+currentCopies[i]+"/"+copies[i]+"\n";
      y="Total unique books: "+numBooks+"\n"+"Total number of copies: "+totalCopies+"\n"+"Total checked out: "+totalCheckedOut;
      printLibrary=x+"\n"+y;
    }
    //println(printLibrary);
    return printLibrary;
  }

  int numBooksByAuthor( Author a ) { 
    int numBooksByAuthor=0;
    String x;
    String y;

    for (int i=0; i<numBooks; i++) {
      x=a.toString();
      y=books[i].author.toString();

      if (x.equals(y)) {
        numBooksByAuthor++;
      }
    }
    return numBooksByAuthor;
  }

  String booksByAuthor( Author a ) { 
    String booksByAuthor="No books by "+a.toString()+".";
    String x;
    String y;

    for (int i=0; i<numBooks; i++) {
      x=a.toString();
      y=books[i].author.toString();

      if (x.equals(y)) {
        if (this.numBooksByAuthor(a)==1) {
          booksByAuthor=books[i].toString()+"\n";
        }
        else if (this.numBooksByAuthor(a)>1) {
          booksByAuthor=books[i-1].toString()+"\n"+books[i].toString()+"\n";
        }
      }
    }
    return booksByAuthor;
  }  

  String booksByTitle( String find ) {
    String booksByTitle="No books with "+"\""+find+"\""+" in the title.";
    String x=find.toUpperCase();
    String y=x.charAt(0)+find.substring(1);
    int c=0;

    for (int i=0; i<numBooks; i++) {
      if (books[i].title.contains(find) || books[i].title.contains(y)) {
        c++;
        if (c==1) {
          booksByTitle=books[i].toString()+"\n";
        }
        else if (c>1) {
          booksByTitle+=books[i].toString()+"\n";
        }
      }
    }
    return booksByTitle;
  }

  String deleteBook( Book b ) {
    String deleteBook="Book not found.";
    boolean x=true;
    
    for (int i=0; i<numBooks; i++) {
      if(b==books[i]) {
        x=false;
        copies[i]=0;
        checkedOut[i]=0;
        numBooks--;
        deleteBook="Book removed.";
      }
        if (x==false) {
        books[i]=books[i+1];      
        }
      }
    return deleteBook;
  }
}

// This is the Author class

public class Author {
  String lastName=null;
  String firstName=null;
  int birth=YEAR_NOT_SET; 
  int death=YEAR_NOT_SET;

  public Author() {
  }

  public Author(String l, String f) {
    lastName = l;
    firstName = f;
  }

  int getBirth() {
    return birth;
  }

  int getDeath() {
    return death;
  }

  void setDates( int x ) {
    if ( x>-2000 && x<2018 ) {
      birth=x;
    }
  }

  void setDates(int x, int y) {
    if ( x>-2000 && x<2018 && y<2018 && x<y) {
      birth=x;
      death=y;
    }
  }

  int compareTo( Author author1 ) {
    String x=author1.firstName;
    String y=author1.lastName;
    char j=x.charAt(0);
    char i=firstName.charAt(0);
    int z=x.compareTo(firstName)+y.compareTo(lastName);
    if (y==lastName) {
      if (x.length()==1 && j==i) {
        z=0;
      }
      else if (x.length()!=1 && x==firstName) {
        z=0;
      }
    }
    return z;
  }

  String toString() {
    String x=lastName;
    String y=firstName;
    return x+", "+y;
  }

  String printAuthorInfo() {
    String x=lastName;
    String y=firstName;
    int b=birth;
    int d=death;
    String info= x+", "+y;
    if (b!=YEAR_NOT_SET && d==YEAR_NOT_SET) {
      info = x+", "+y+" (b. "+b+")";
    }
    else if (b!=YEAR_NOT_SET && d!=YEAR_NOT_SET) {
      info = x+", "+y+" ("+b+"-"+d+")";
    }
    return info;
  }
} 

// This is the Book class

public class Book {
  String title="TITLE NOT SET";
  Author author=AUTHOR_NOT_SET;
  int year=-4000;
  String ISBN= "ISBN NOT SET";

  public Book() {
  }
  public Book(String tempTitle) {
    title=tempTitle;
  }
  public Book(String tempTitle, Author tempAuthor) {
    title=tempTitle;
    author=tempAuthor;
  }

  void setTitle(String a) {
    if (a.length()!=0) {
      title=a;
    }
  }

  String getTitle() {
    return title;
  }

  void setAuthor(Author a1) {
    author=a1;
  }

  Author getAuthor() {
    return author;
  }

  void setYear(int x) {
    if ( x>-2000 && x<2018 ) {
      year=x;
    }
  }

  int getYear() {
    return year;
  }

  void setISBN(String y) {
    if ( y.length()==13 || y.length()==10) {
      ISBN=y;
    }
  }

  public String getISBN() {
    return ISBN;
  }

  boolean sameAuthor(Book b) {
    boolean bool=false;
    String e=b.author.firstName;
    String f=b.author.lastName;
    String g=author.firstName;
    String h=author.lastName;
    char j=e.charAt(0);
    char i=g.charAt(0);
    if (j==i && f==h) {
      bool=true;
    }
    return bool;
  }

  int compareTo (Book b) {
    int compareISBN=ISBN.compareTo(b.ISBN);
    if (b.ISBN==ISBN) {
      compareISBN=0;
    }
    return compareISBN;
  }

  String toString() {
    String x= title;
    String info=x+".";

    if (author!=AUTHOR_NOT_SET) {
      String l= author.lastName;
      String f= author.firstName;
      int y=year;
      if (y==YEAR_NOT_SET) {
        info= x+". "+l+", "+f+".";
      }
      else {
        info= x+" ("+y+"). "+l+", "+f+".";
      }
    }
    return info;
  }
}
//Book class ends here.

