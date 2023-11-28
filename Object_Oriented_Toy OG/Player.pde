boolean PL1moveUp;
boolean PL1moveDown;
boolean PL1moveLeft;
boolean PL1moveRight;
boolean lghtPower;

PVector location;
PVector PL1speed;

int xBound=100;
int yBound= 140;

float[] xpos = new float[25];
float[] ypos = new float[25];

//----------------------------------------------------------------------------------------------------------------//


class Player { // identifies that Player is a class with its own code

  public Player() { //similar to a 'void setup()' it sets perameters for various variables
    PL1moveUp=false;
    PL1moveDown=false;
    PL1moveLeft=false;
    PL1moveRight=false;
    lghtPower = false;
    location = new PVector (width/2, height/2); // players location
    PL1speed = new PVector (5, 4); //players speed
  }


  // the player and what they control
  void livePlayer() { //draws the player and has the controls implemented into it

    //shadow under the car
    noStroke();
    fill(130);
    ellipse(location.x+45, location.y+35, 100, 10);
    fill(90);
    ellipse(location.x+45, location.y+35, 85, 5);



    // when the car moves, there is a light trail that follows it [ARRAY]
    for (int i =0; i<xpos.length-1; i++) {
      xpos[i]=xpos[i+1];
      ypos[i]=ypos[i+1];

      xpos[xpos.length-1]= location.x;
      ypos[ypos.length-1]= location.y;
    }

    //lights on the car(back)
    stroke(0);
    fill(#7E0F17);
    rect(location.x-5, location.y+3, 10, 15);


    // when the car moves left, the ligth trail follows it left until it reaches it
    for (int i =0; i<xpos.length; i++) {
      if (key == 'a') {
        PL1moveLeft=true;
        noStroke();
        fill(#DB1B27, 50);
        rect(xpos[i]+55, ypos[i]+2, xpos[i]-73, 10);
        fill(#FF2938);
        rect(xpos[i]+55, ypos[i]+6, xpos[i]-70, 5);
      } else {
        PL1moveLeft = false;
      }

      //when the car moves right, the light trail follows it until the end
      if (key == 'd') {
        PL1moveRight = true;
        noStroke();
        fill(#DB1B27, 50);
        rect(xpos[i]+5, ypos[i]+2, i+50, 10);
        fill(#FF2938);
        rect(xpos[i]+5, ypos[i]+6, i+40, 5);
      } else {
        PL1moveRight = false;
      }
    }

    //Wheels(behind)
    stroke(0);
    fill(0);
    ellipse(location.x+73, location.y+20, 22, 25);
    ellipse(location.x+30, location.y+20, 22, 25);

    //-----------------------------Car Body
    // side of the car
    fill(#6B22A0);
    rect(location.x+20, location.y, 70, 25);


    // the front of the car
    fill(#504F50);
    rect(location.x+15, location.y, 70, 25);


    //top of the car
    fill(#9135D3);
    rect(location.x+5, location.y-10, 70, 15);


    //windsheild
    fill(#421364);
    rect(location.x+50, location.y-10, 25, 20);

    //winsheild lighting
    stroke(#6F1AAD);
    line(location.x+50, location.y-10, location.x+65, location.y);
    stroke(#842EC6);
    line(location.x+53, location.y-13, location.x+73, location.y);


    //car roof
    stroke(0);
    fill(50);
    rect(location.x+2, location.y-15, 80, 5);
    fill(40);
    rect(location.x+50, location.y-15, 30, 5);

    // the front side of the car
    fill(#9135D3);
    rect(location.x, location.y, 75, 25);

    //Front of car(where lights will be)
    fill(#6B22A0);
    rect(location.x+70, location.y, 7, 25);

    //-----------------------------Wheels
    //Car wheels(front)
    stroke(0);
    fill(40);
    ellipse(location.x+53, location.y+20, 22, 25);
    ellipse(location.x+15, location.y+20, 22, 25);

    //Wheel rims
    strokeWeight(1.4);
    fill(80);
    ellipse(location.x+53, location.y+20, 15, 18);
    ellipse(location.x+15, location.y+20, 14, 17);
  }

  //-----------------------------Front Lights
  void carLights() {
    //Front lights
    stroke(0);
    fill(255);
    ellipse(location.x+74, location.y+10, 3, 10);
    ellipse(location.x+88, location.y+10, 2, 10);

    if (mousePressed) {
      lghtPower = true;
      stroke(255, 20);
      fill(255, 50);
      rect(location.x+74, location.y+5, width, 10);
      rect(location.x+88, location.y+5, width, 10);
    } else {
      lghtPower = false;
    }
  }



  void keyPressed() {  //when the key is pressed, the player will move in that direction
    frameRate(100);
    if (key == 'w') {
      PL1moveUp = true;
    }
    if (key == 's') {
      PL1moveDown = true;
    }
    if (key == 'a') {
      PL1moveLeft = true;
    }
    if (key == 'd') {
      PL1moveRight = true;
    }

    // sets the value of location dpending on speed
    if (PL1moveUp) {
      location.y -= PL1speed.y;
    }
    if (PL1moveDown) {
      location.y += PL1speed.y;
    }
    if (PL1moveLeft) {
      location.x -= PL1speed.x;
    }
    if (PL1moveRight) {
      location.x += PL1speed.x;
    }
  }

  // If the key is released then the ship will stop moving in that direction
  void keyReleased() {
    if (key == 'w') {
      PL1moveUp = false;
    }
    if (key == 's') {
      PL1moveDown = false;
    }
    if (key == 'a') {
      PL1moveLeft = false;
    }
    if (key == 'd') {
      PL1moveRight = false;
    }
  }




  // this makes sure that the player stays within a certain area on the canvas
  void Bound() {
    location.x = constrain(location.x, 10, width-xBound);
    location.y= constrain(location.y, 100, height-yBound);
  }
}
