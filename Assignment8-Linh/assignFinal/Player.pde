//***********************************
// Linh Tran 
// This class makes the player (ship) and draw at default size
// The player has 4 characteristics
// that are random (x&y position, speed, and direction, )
//***********************************
public class Player {
  float x;
  float y;
  float speed;
  float direction;
  //***********************************
  // Player : Player Contructor 
  // contructor  set the position to be at the center of screen
  // intial speed and direction is zero
  //**********************************
  Player() {
    // start the ship/player in the middle of the screen
    x = width/2;
    y = height/2;

    // set initial speed/direction
    speed = 0;
    direction = 0;
  }
  //***********************************
  // float getX() : float and getX
  // Method return a float called x
  //***********************************
  float getX() {
    return x;
  }
  //***********************************
  // float getY() : float and getY
  // Method return a float called y
  //***********************************
  float getY() {
    return y;
  }
  //***********************************
  //void updatPosition: void method and updatePosition
  // update the position of the asteroid
  // x and y should change based on the speed and direction
  // of the plyer.
  // if the player is going off the canvas
  // move it to the other side 
  // slow down the speed of the ship by multiplying it
  // by slowDown
  //***********************************
  public void updatePosition() {
    // update the position of the ship/player
    // x and y should change based on the speed and direction
    // of the ship/player.
    x = x+ speed * cos (direction);
    y = y+ speed * sin (direction);

    // if the ship/player is going off the canvas
    // move it to the other side

    if ( x <= 0 ) {
      x = width;
    }
    else if (  x >= width) {
      x = 0;
    }
    if ( y <= 0) {
      y = height;
    }
    else if ( y>=height) {
      y = 0;
    }
    // slow down the speed of the ship by multiplying it
    // by slowDown. I don't know why the ship experiences
    // resistance in space but nothing else does.
    speed = speed * slowDown;
  }
  //***********************************
  //void draw(): void method and draw
  // Method does not return any variables
  // run the updatePosition method to make the 
  // player calculate where it should be next
  // set a color/stroke for player
  // draw the laser torquiose color
  //***********************************
  public void draw() {
    // run the updatePosition method to make the 
    // laser calculate where it should be next
    updatePosition();

    // set a color/stroke for lasers 
    fill( #FFFFFF );
    stroke( #e28bc5 );
    strokeWeight( 4 );
    ellipse( x, y, charSize, charSize );
    // this line shows you which way the ship is going.
    // I promise this will help.
    line( x, y, x+20*cos(direction), y+20*sin(direction) );
  }
  //***********************************
  //void setSpeed: void method and setSpeed
  // increase speed by a float paseed in called a
  // Method does not return any variables
  //***********************************
  public void setSpeed( float a ) {
    speed= speed+a;
  }
  //***********************************
  //void setDirection: void method and setDirection
  // increase change in direction by a float paseed in called a
  // Method does not return any variables
  //***********************************
  public void setDirection( float a ) {
    direction=direction+a;
  }
  //***********************************
  // shoot : Laser Class 
  // contructor  
  // that creates a laser object called laserObject using x,y,dirction
  // and returns it
  //**********************************
  Laser shoot() {    
    // create a new Laser object and return it
    Laser laserObject = new Laser (x, y, direction);
    return laserObject;
  }
}

