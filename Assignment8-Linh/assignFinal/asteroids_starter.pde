
// Game State
int numAsteroids = 30;   // start number of asteroids (not updated)
int lives = 3;           // number of lives
int score = 0;           // player's score

// Display Properties
int charSize = 16;       // size of the ship

// Movement
int   incVal = 1;            // amount speed increases
float amountMove = .99;        // amount to move each step
float slowDown = .99;          // the ship slows down over time (I don't know why)
float directionChange = 1;   // how much the ship rotates with left-right keypress

// Mode
boolean playMode = true;       // is the game playable?

// Objects
Player p1; 
ArrayList<Asteroid> asteroids;
ArrayList<Laser> lasers;

void setup() {
  size( 700, 400 );
  background( 000 ); 
 
  smooth();

  // Font loading
  PFont font;
  font = loadFont("DIN-Bold-48.vlw");
  textFont(font, 24);

  // Create player, and lists of asteroids and lasers
  p1 = new Player();   
  asteroids = new ArrayList();
  lasers = new ArrayList();

  // Initialize all the asteroids
  for ( int i=0; i<numAsteroids; i++ ) {
    asteroids.add( new Asteroid() );
  }
}
//***********************************
//void draw(): void method and draw
// Method does not return any variables
// checks if the numAsteroid are all killed then playMode is off
// else if gameMode is true run  checkAsteroidDeath();  // did any asteroids explode?
// checkShipDeath(); drawAsteroids(); drawLasers(); p1.draw(); showLives(); showScore();showAsteroids();    
//if playMode is off and lives are <0 then display game over :(
// if playMode is off and lives are >0 then display you win :)
//***********************************
void draw() {
  background( 000 );

  if ( numAsteroids ==0 ) {
    playMode = false;
  }

  if ( playMode ) {
    // Things to do each frame we render:
    checkAsteroidDeath();  // did any asteroids explode?
    checkShipDeath();      // did the ship explode?

    drawAsteroids();       // draw the asteroids
    drawLasers();          // draw the lasers
    p1.draw();             // draw the ship

    showLives();           // draw the life display
    showScore();           // draw the score display
    showAsteroids();       // draw the asteroids display
  } 
  else if (playMode == false && lives<0) {
    // Things to show after the game is over!

    fill( #FFFFFF );
    text( "Game Over :(", width/2-60, height/2);
  }

  else if ( playMode ==false && lives>0)
  {// Things to show when the game is won!
    fill( #FFFFFF );
    text( "You Win :)", width/2-40, height/2);
  }
}
//***********************************
//void draw(): void method and draw
// Method does not return any variables
// draw each asteroids in the arrayList of asteroids using for loop
// of arrayList
//***********************************
void drawAsteroids() {
  for ( int i=0; i<asteroids.size(); i++ ) {
    asteroids.get(i).draw();
  }
}
//***********************************
//void draw(): void method and draw
// Method does not return any variables
// draw each asteroids in the arrayList of asteroids using for loop
// of arrayList
//***********************************
void drawLasers() {
  // draw all the lasers!
  for ( int i=0; i<lasers.size(); i++ ) {
    lasers.get(i).draw();
  }
}
//***********************************
//void addLaser(Laserl): void method and addLaser
// Method does not return any variables take in laser called l
// add a laser to lasers array list
//***********************************
// this method does not need to be changed, but adds 
// a laser to the lasers "array"
void addLaser( Laser l ) {
  lasers.add( l );
}
//***********************************
//void removeLaser(Laserl): void method and addLaser
// Method does not return any variables take in laser called l
// remove a laser to lasers array list
//***********************************
// this method does not need to be changed, but removes 
// a laser from the lasers "array"
void removeLaser( Laser l ) {
  lasers.remove( l );
}
//***********************************
//void checkAsteroidDeath: void method and checkAsteroidDeath
// Method does not return
// for each asteroid
// check to see if it is touching any lasers
// if it is touching any lasers, 
// remove() the laser
// remove() the asteroid
// add +10 to the score
//***********************************
void checkAsteroidDeath() {

  for ( int i=0; i<lasers.size(); i++ ) { //for loop through lasers array using i
    Laser laz = lasers.get(i); //creates temporary laser called laz
    float laserX = lasers.get(i).getX(); //create two floats to help postion of each laser x, y position 
    float laserY = lasers.get(i).getY();

    for ( int j = 0; j<asteroids.size(); j++) { //loop though asteroids array using j
      float asteroidsX = asteroids.get(j).getX();//create two floats to help postion of each asteroid x, y position 
      float asteroidsY = asteroids.get(j).getY();
      if (  sq(laserX- asteroidsX) + sq(laserY-asteroidsY) < 100)//using pythag/trig form to find radius between each laser and asteroid are within 100 pixels 
      { 
        lasers.remove( laz );// remove temp laser laz if the asteroids and laser touch within 100 pix
        asteroids.remove(j); // remove asteroid if the asteroids and laser touch within 100 pix
        score += 10; // add 10 pts to score
        numAsteroids--;// subtract numbero of asteroids left by 1
      }
    }
  }
}

//***********************************
//void checkShipDeath: void method and checkShipDeath
// check to see if any of the asteroids
// have hit the ship, if they have:
//    remove a life
//    and call resetShip()
// if no lives are left (lives < 0)
// then change playMode to false.
//***********************************

void checkShipDeath() {
  for (int j=0; j<asteroids.size(); j++) { //for loop through asteroids array using int j
    float asteroidsX = asteroids.get(j).getX(); //creates two floats holding the position of each asteroids in x,y
    float asteroidsY = asteroids.get(j).getY();

    if ( sq( p1.getX() - asteroidsX) + sq(p1.getY()-asteroidsY)< 100)//using pythag/trig form to find radius between each ship and asteroid are within 100 pixels 
    {
      lives --; //decrease lives by 1
      asteroids.remove(j);//remove asteroid hit from arraylist
      numAsteroids--;//decrease numAsteroids left by 1
      resetShip();//called resetShip method that set ship back to center of screen
      if ( lives < 0) { //check if lives left then playMode off
        playMode = false;
      }
    }
  }
}


//***********************************
//void resetShip: void method and resetShip// put the player back in the middle.
// and take as many asteroids as are left
// and move them away from the ship
//***********************************
void resetShip() {
  // put the player back in the middle.
  // and take as many asteroids as are left
  // and move them away from the ship
  float centerX = width/2; //find center of sceen in x direction to int centerX
  float centerY = height/2;//find center of sceen in y direction to int centerY
  p1.x = centerX;// set the x position of player to centerX
  p1.y = centerY;// set the y position of player to centerY
  for (int j=0; j<asteroids.size(); j++) { //for loop through asteroids array using j
    if ( sq( asteroids.get(j).getX()-width/2) + sq( asteroids.get(j).getY()-height/2)< 10000) {//using pythag/trig form to find radius between each ship and asteroid are within 1000 pixels 
      asteroids.get(j).x= width/2-500; //reset the postion x of each asteroids in array 500 pixels away from center x
      asteroids.get(j).y = height/2-500;//reset the postion x of each asteroids in array 500 pixels away from center y
    }
  }
}
//***********************************
//void keyPressed: void method and keyPressed 
// dectect keys pressed on keyboard up,down,left,right,space
//***********************************
void keyPressed() {
  if (playMode) { 
    if (key == CODED && keyCode == DOWN) { 
      p1.setSpeed( -incVal/2.323453 );
    }
    if (key == CODED && keyCode == UP) { 
      p1.setSpeed( incVal );
    }
    if (key == CODED && keyCode == LEFT) { 
      p1.setDirection( -directionChange );
    }
    if (key == CODED && keyCode == RIGHT) {
      p1.setDirection( directionChange );
    }
    if (key == ' ') {
      addLaser(p1.shoot());
    }
  }
}
//***********************************
//void methods that display text on the screen
// show lives, show score, and show asteroids
//***********************************
void showLives() {
  fill( #FFFFFF );
  text( "Lives: " + lives, 10, 30);
}

void showScore() {
  fill( #FFFFFF );
  text( "Score: " + score, width-120, 30);
}

void showAsteroids() {
  fill( #FFFFFF );
  text( "Asteroids: " + asteroids.size(), 10, height-10);
}

