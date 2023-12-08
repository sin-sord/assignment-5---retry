//allows objects to be used from classes
Player PLYR = new Player();
Line LN = new Line();
Wall WL = new Wall();
Road RD = new Road();
Obstacle[] OBS = new Obstacle[2];
Poll PL = new Poll();

//Timer startTimer = new Timer(0);
time countUp = new time(0);


PVector moonXY; // random2D() vector


void setup() {
  size(900, 800);
  for (int i =0; i<xpos.length-1; i++) {
    xpos[i]=0;
    ypos[i]=0;
  }
  for (int i = 0; i < 2; i++) {
    OBS[i] = new Obstacle();
  }
  moonXY = PVector.random2D();
}



void draw() { //this will draw the objects from other classes

  if (gameOver) {
  }

  frameRate(60);
  //draws the background
  background(0);
  ellipse(moonXY.x, moonXY.y, 150, 150);

  //---------------------------------------------------------The Road
  RD.roadDraw();


  //---------------------------------------------------------The Back Wall
  // draws the walls at the back edge of the road

  WL.backWall();

  //---------------------------------------------------------The Line
  //draws the lines on the road
  LN.drawLine();

  //---------------------------------------------------------The player


  //---------------------------------------------------------The player
  // draw the players
  PLYR.PLYRavatar();

  //allows the controls over the car for the player
  PLYR.keyPressed();
  PLYR.keyReleased();

  //set the boundaries for the player
  PLYR.Bound();

  // the lights the player can toggle
  PLYR.carLights();


  //---------------------------------------------------------The Obstacle
  for (int i = 0; i < 2; i++) {
    // draws the barrel
    OBS[i].drawObstacle1();
    //allows the barrel to move
    OBS[i].ObstacleMove();
    //    OBS[i].drawObstacle2();
  }

  //---------------------------------------------------------The Front Wall
  //draws the wall at the front edge of the road
  PL.drawPoll1();
  PL.pollMove();
  PL.mousePressed();
  WL.frontWall();


  //draws text so the player knows the controls
  fill(255);
  textSize(20);
  text("use WASD to move", 350, 25);
  text("left-click for lights", 550, 25);

  //---------------------------------------------------------The Collision
  PLYR.collision();

  //---------------------------------------------------------The Timer
  //startTimer.countUp();
  //fill(255);
  //textSize(175);
  //text(startTimer.getTime(), 75, 750);

  countUp.timeCount();
  fill(255);
  textSize(160);
  text(countUp.getTime(), 75, 750);
}

void replay() {
  if (key == ' ' && gameOver) {
    PLYR.reset();
    gameOver = false;
  }
}
