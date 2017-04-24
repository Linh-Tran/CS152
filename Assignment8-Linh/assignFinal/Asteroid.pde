//***********************************
// Linh Tran 
// This class makes asteroids and draw at default size
// The asteroid has 4 characteristics
// that are random (position, speed, and direction, x, y)
//***********************************
public class Asteroid {
  float x;
  float y;
  float speed;
  float direction;
  int size;
  //***********************************
  // Asteroid : Asteroid Contructor 
  // contructor  set the position to be somewhere in space 
  // using random width and height for x, y
  // create a force field using for loop through asteroid postion,
  // and the center of screen 
  // at the beginning of the game
  //**********************************
  Asteroid() {
    x = random(width);
    y = random(height);
    for (int j=0; j<asteroids.size(); j++) {
      if ( sq( asteroids.get(j).getX()-width/2) + sq( asteroids.get(j).getY()-height/2)< 10000) {
        asteroids.get(j).x= width/2-500;
        asteroids.get(j).y = height/2-500;
      }
    }
    // set the speed and direction of the asteroid
    // randomly (within some good range)    
    speed = random (2);
    direction = random(-3.14, 3.14);

    // set the size of a default asteroid
    size = 20;
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
  //void draw(): void method and draw
  // Method does not return any variables
  // run the updatePosition method to make the 
  // asteroid calculate where it should be next
  // set a color/stroke for asteroids 
  // draw the asteroids 
  //***********************************
  void draw() {
    // run the updatePosition method to make the 
    // asteroid calculate where it should be next
    updatePosition();


    // set a color/stroke for asteroids 
    noStroke();

    // draw the asteroids
    ellipse( x, y, size, size );
  }
  //***********************************
  //void updatPosition: void method and updatePosition
  // update the position of the asteroid
  // x and y should change based on the speed and direction
  // of the asteroid.
  // if the asteroid is going off the canvas
  // move it to the other side 
  //***********************************
  void updatePosition() {
    // update the position of the asteroid
    // x and y should change based on the speed and direction
    // of the asteroid.
    // if the asteroid is going off the canvas
    // move it to the other side

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
  }
}

