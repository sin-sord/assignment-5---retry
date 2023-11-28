Player PL = new Player();
Line LN = new Line();
Wall WL = new Wall();


void setup() {
  size(700, 400);
}



void draw() {
  //draws the background
  background(0);

  // draws the road
  stroke(0);
  fill(150);
  rect(0, 90, width, 250);

  //---------------------------------------------------------The Back Wall
  // draws the walls at the back edge of the road
  WL.backWall();

  //---------------------------------------------------------The Line
  //draws the lines on the road
  LN.drawLine();


  //---------------------------------------------------------The player
  // draw the players
  PL.livePlayer();

  //allows the controls over the car for the player
  PL.keyPressed();
  PL.keyReleased();

  //set the boundaries for the player
  PL.Bound();

  // the lights the player can toggle
  PL.carLights();

  //---------------------------------------------------------The Front Wall
  //draws the wall at the front edge of the road
  WL.frontWall();


  //overs canvas in black opacity
  fill(0, 80);
  rect(0, 0, 700, 400);

  //draws text so the player knows the controls
  fill(255);
  textSize(20);
  text("use WASD to move", 20, 25);
  text("left-click for lights", 200, 25);
}
