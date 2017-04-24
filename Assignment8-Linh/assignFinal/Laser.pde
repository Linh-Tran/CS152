//***********************************
// Linh Tran 
// This class makes laser and draw at default size
// The laser has 4 characteristics
// that are random (position, speed, and direction, x, y)
//***********************************
public class Laser {
  float x;
  float y;
  float speed;
  float direction;
  float lifeSpan;
  //***********************************
  // Asteroid : Laser Contructor takes in 3 floats x, y ,direction
  // that are pass in  
  // set speed to 3 at default
  // lifespan of 150 lasers per frame
  //**********************************
  Laser( float x, float y, float d ) {
    // set the position to be whatever is passed in
    this.x = x;
    this.y = y;

    // set the direction to be whatever is passed in
    direction = d;

    // set the speed to something reasonable
    speed = 3;

    // set the lifespan to be a reasonable number of frames
    lifeSpan = 150;
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
  // update the position of the laser
  // x and y should change based on the speed and direction
  // of the laser.
  // if the laser is going off the canvas
  // move it to the other side
  // make the lifespan go down by 1 each time 
  // if this laser is dead (lifeSpan is 0), call removeLaser method using the laser passed in 
  //***********************************
  public void updatePosition() {
    // update the position of the laser
    // x and y should change based on the speed and direction
    // of the laser.
    x = x+ speed * cos (direction);
    y = y+ speed * sin (direction);

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
    lifeSpan--;
    if (lifeSpan==0) { 
      removeLaser(this);
    }

    // make the lifespan go down
    // if this laser is dead, call removeLaser
  }
 //***********************************
  //void draw(): void method and draw
  // Method does not return any variables
  // run the updatePosition method to make the 
  // laser alculate where it should be next
  // set a color/stroke for asteroids 
  // draw the laser torquiose color
  //***********************************
  public void draw() {
    // run the updatePosition method to make the 
    // laser calculate where it should be next
    updatePosition();

    // set a color/stroke for lasers 
    stroke( #34DDDD );
    strokeWeight( 10 );

    // draw the laser
    ellipse( x, y, 5, 5 );
  }
}

