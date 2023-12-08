//----!Help from Christian Salame with making the obstacles move using PVector!
boolean OBSright;
boolean OBSleft;

int barrelTop;
int barrelBottom;

PVector OBSPosition1;
PVector OBSSpeed1;

//PVector OBSPosition2;
//PVector OBSSpeed2;

PVector collisionLocation1;
//PVector collisionLocation2;
PVector collisionSpeed;

class Obstacle {

  public Obstacle() {

    barrelTop = 45;
    barrelBottom = 40;

    OBSPosition1 = new PVector (1900, 275);
    OBSSpeed1 = new PVector (-7, 0);

    OBSleft=false;
    OBSright=false;

    collisionLocation1 = new PVector (0, 300);
    collisionSpeed = new PVector (-7, 0);
  }

  void ObstacleMove() {
    //   print("OBS1 Location: " + OBSPosition1.x);
    OBSPosition1.add(OBSSpeed1);
    if (OBSPosition1.x < -50) {
      OBSPosition1.x = random(1900, 1955);
      OBSPosition1.y= random(100, 400);
    }



    collisionLocation1.add(collisionSpeed);
    if ( collisionLocation1.x < -50) {
      collisionLocation1.x = OBSPosition1.x;
      collisionLocation1.y= OBSPosition1.y;
    }
  }

  void drawObstacle1() {
    //barrel base
    fill(#8E7F7F);
    stroke(0);
    rect(OBSPosition1.x, OBSPosition1.y, 45, 65);
    noFill();
    //border of barrel
    stroke(#FEFF00);
    rect(collisionLocation1.x, collisionLocation1.y+25, 45, 40);
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
      collisionLocation1.x -= collisionSpeed.x;
    }
    if (OBSright == true) {
      OBSPosition1.x += OBSSpeed1.x;
      collisionLocation1.x += collisionSpeed.x;
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
