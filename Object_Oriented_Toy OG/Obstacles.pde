//----!Help from Christian Salame with making the obstacles move using PVector!
boolean OBSright;
boolean OBSleft;

PVector OBSPosition1;
PVector OBSSpeed1;

PVector OBSPosition2;
PVector OBSSpeed2;

class Obstacle {

  public Obstacle() {
    //Barrel 1
    OBSPosition1 = new PVector (0, 300);
    OBSSpeed1 = new PVector (-6, 0);

    OBSPosition2 = new PVector (0, 300);
    OBSSpeed2 = new PVector (-6, 0);

    OBSleft=false;
    OBSright=false;
  }

  void ObstacleMove() {
    OBSPosition1.add(OBSSpeed1);
    if (OBSPosition1.x < -50) {
      OBSPosition1.x = 1900;
      OBSPosition1.y= random(30, 200);
    }


    OBSPosition2.add(OBSSpeed2);
    if (OBSPosition2.x < -50) {
      OBSPosition2.x = 1955;
      OBSPosition2.y= random(250, 450);
    }
  }

  void drawObstacle1() {
    //barrel base
    fill(#8E7F7F);
    stroke(0);
    rect(OBSPosition1.x, OBSPosition1.y, 45, 65);
  }

  void drawObstacle2() {
    fill(#8E7F7F);
    stroke(0);
    rect(OBSPosition2.x, OBSPosition2.y, 45, 65);
  }

  void obstaclekeyPressed() {  //when the key is pressed, the player will move in that direction
    frameRate(100);
    if (key == 'a') {
      OBSleft = true;
    }
    if (key == 'd') {
      OBSright = true;
    }

    // sets the value of location dpending on speed
    if (OBSleft == true) {
      OBSPosition1.x -= OBSSpeed1.x;
    }
    if (OBSright == true) {
      OBSPosition1.x += OBSSpeed1.x;
    }
  }


  // If the key is released then the player will move without having the key being held
  void obstaclekeyReleased() {
    if (key == 'a') {
      OBSleft = false;
    }
    if (key == 'd') {
      OBSright = false;
    }
  }
}
