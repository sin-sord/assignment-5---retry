boolean PL1moveUp;
boolean PL1moveDown;
boolean PL1moveLeft;
boolean PL1moveRight;
boolean lghtPower;

PVector location;
PVector PL1speed;
PVector hitbox;

boolean gameOver;

int xBound=155;
int yBound= 300;

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
    PL1speed = new PVector (6.5, 5); //players speed
    hitbox = new PVector (width/2, height/2);
    gameOver = false;
  }


  // the player and what they control
  void PLYRavatar() { //draws the player and has the controls implemented into it
    //print(location);
    //shadow under the car
    noStroke();
    fill(130);
    ellipse(location.x+60, location.y+25, 195, 12);
    fill(90);
    ellipse(location.x+60, location.y+25, 150, 3);


    //----------------------------------------------REAR LIGHTS
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

      //when the car moves right, the light trail follows it until the end
      if (key == 'd') {
        PL1moveRight = true;
        noStroke();
        fill(#DB1B27, 50);
        rect(xpos[i]-65, ypos[i]-20, i+50, 10);
        fill(#FF2938, 45);
        rect(xpos[i]-65, ypos[i]-20, i+40, 5);
      } else {
        PL1moveRight = false;
      }

      //when the car moves up, the light trail follows it until the end
      if (key == 'w') {
        PL1moveUp = true;
        noStroke();
        fill(#DB1B27, 50);
        rect(xpos[i]-50, ypos[i]-20, i+5, 10);
        fill(#FF2938, 45);
        rect(xpos[i]-50, ypos[i]-20, i+3, 5);
      } else {
        PL1moveUp = false;
      }

      //when the car moves down, the light trail follows it until the end
      if (key == 's') {
        PL1moveDown = true;
        noStroke();
        fill(#DB1B27, 50);
        rect(xpos[i]-50, ypos[i]-20, i+4, 10);
        fill(#FF2938, 45);
        rect(xpos[i]-50, ypos[i]-20, i+3, 5);
      } else {
        PL1moveDown = false;
      }
    }

    //----------------------------------------------BACK WHEELS
    //back wheels
    //front
    stroke(0);
    strokeWeight(1.3);
    fill(70);
    ellipse(location.x+10, location.y, 45, 45);
    //side
    fill(30);
    ellipse(location.x+5, location.y, 45, 45);

    //front wheels
    //front
    fill(70);
    ellipse(location.x+143, location.y+12, 21, 21);
    //side
    fill(30);
    ellipse(location.x+137, location.y+12, 21, 21);

    //front wheel covers
    fill(90);
    rect(location.x+90, location.y+5, 50, 10);

    //----------------------------------------------CAR
    //car body - main
    //front
    fill(#401164);
    rect(location.x-5, location.y-55, 100, 60);
    //front window
    fill(0);
    rect(location.x+52, location.y-50, 40, 25);
    //side
    fill(#6B22A0);
    rect(location.x-40, location.y-55, 90, 60);


    //car body - front lights
    //front
    fill(#401164);
    rect(location.x+147, location.y-23, 15, 28);

    //car body - front
    fill(#401164);
    rect(location.x+85, location.y-30, 67, 35);
    //front grill
    fill(#626262);
    rect(location.x+129, location.y-28, 17, 33);
    //side
    fill(#6B22A0);
    rect(location.x+54, location.y-30, 70, 35);

    //car body - front light placement
    //side
    fill(#6B22A0);
    rect(location.x+50, location.y-24, 70, 28);
    //front
    fill(#401164);
    rect(location.x+110, location.y-24, 13, 28);

    //car body - front light
    //right
    fill(205);
    ellipse(location.x+118, location.y-5, 7, 12);
    ellipse(location.x+117, location.y-15, 9, 10);
    //left
    fill(205);
    ellipse(location.x+159, location.y-5, 5, 12);
    ellipse(location.x+158, location.y-15, 7, 9);

    //back lights
    stroke(0);
    fill(#790B0B);
    rect(location.x-45, location.y-25, 8, 18);
    rect(location.x-45, location.y-15, 8, 9);
    if (key=='a') {
      PL1moveLeft = true;
      stroke(0);
      fill(#E52525);
      rect(location.x-45, location.y-25, 8, 18);
      rect(location.x-45, location.y-15, 8, 9);
    } else {
      PL1moveLeft = false;
      stroke(0);
      fill(#790B0B);
      rect(location.x-45, location.y-25, 8, 18);
      rect(location.x-45, location.y-15, 8, 9);
    }


    //car body - roof
    //side
    fill(#343434);
    rect(location.x-50, location.y-62, 135, 7);
    //front
    fill(#1C1C1C);
    rect(location.x+48, location.y-62, 55, 7);

    //----------------------------------------------FRONT WHEELS
    //back wheels
    //front
    fill(30);
    ellipse(location.x-10, location.y+2, 45, 45);
    //side
    fill(70);
    ellipse(location.x-15, location.y+2, 45, 45);

    //front wheels
    //front
    fill(30);
    ellipse(location.x+95, location.y+12, 21, 21);
    //side
    fill(70);
    ellipse(location.x+90, location.y+12, 21, 21);

    //----------------------------------------------FRONT SKULL
    //skull base
    fill(245);
    ellipse(location.x+138, location.y-12, 28, 35);
    //skull eyes
    fill(0);
    ellipse(location.x+131, location.y-17, 6, 10);
    fill(0);
    ellipse(location.x+147, location.y-17, 5, 10);
    //skull mouth
    fill(0);
    ellipse(location.x+132, location.y-5, 5, 8);
    ellipse(location.x+147, location.y-5, 5, 8);

    //skull teeth - top
    fill(255);
    ellipse(location.x+137, location.y-3, 3, 5);
    ellipse(location.x+143, location.y-4, 3, 5);
    ellipse(location.x+141, location.y-4, 3, 5);
    ellipse(location.x+139, location.y-3, 3, 5);

    //skull teeth - bottom
    fill(255);
    ellipse(location.x+137, location.y-8, 3, 5);
    ellipse(location.x+143, location.y-7, 3, 5);
    ellipse(location.x+141, location.y-7, 3, 5);
    ellipse(location.x+139, location.y-8, 3, 5);
    //skull nose
    fill(150);
    ellipse(location.x+138, location.y-15, 2, 6);
    ellipse(location.x+142, location.y-15, 2, 6);

    ////adds a border around the avatar where collision should happen if they touch a barrel
    //stroke(#FEFF00);
    //noFill();
    //rect(hitbox.x-50, hitbox.y-5, 215, 25);
  }

  //-----------------------------FRONT LIGHTS
  void carLights() {
    //Front lights
    if (mousePressed) {
      lghtPower = true;
      stroke(255, 20);
      fill(255, 50);
      rect(location.x+160, location.y-20, width, 10);
      rect(location.x+117, location.y-20, width, 10);
    } else {
      lghtPower = false;
    }

    if (key=='e') {
      noStroke();
      fill(random(0, 255), random(0, 255), random(0, 255));
      rect(location.x+160, location.y-20, width, 10);
      rect(location.x+117, location.y-20, width, 10);
    } else {
      noStroke();
      noFill();
    }
  }


  void keyPressed() {  //when the key is pressed, the player will move in that direction
    if (key == ' ') {
      if (gameOver) {
        PLYR.reset();
        gameOver = false;
      }
    }
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
      if (keyCode == 'r') {
        if (gameOver) {
          reset();
          gameOver = false;
        }
      }
      // sets the value of location dpending on speed
      if (PL1moveUp == true) {
        location.y -= PL1speed.y;
        hitbox.y -= PL1speed.y;
      }
      if (PL1moveDown == true) {
        location.y += PL1speed.y;
        hitbox.y += PL1speed.y;
      }
      if (PL1moveLeft == true) {
        location.x -= PL1speed.x;
        hitbox.x -= PL1speed.x;
      }
      if (PL1moveRight == true) {
        location.x += PL1speed.x;
        hitbox.x += PL1speed.x;
      }
  }



    // If the key is released then the player will move without having the key being held
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
      location.y = constrain(location.y, 100, height-yBound);

      hitbox.x = constrain(hitbox.x, 10, width-xBound);
      hitbox.y = constrain(hitbox.y, 100, height-yBound);
    }

    void reset() {
      gameOver = false;
      PLYRavatar();
      collision();
    }


    // help from this video: https://www.youtube.com/watch?v=0IAuJDzfyQo
    void collision() {   //this will detect a collision between the obstacle and player
      float playerboxX = location.x;
      float playerboxY =  location.y;
      float obstacleX  = OBSPosition1.x;
      float obstacleY = OBSPosition1.y;
      print((playerboxY + height/2) > ( obstacleY  + height/2+30));
      if ((playerboxX - height/2) > ( obstacleX  - height/2) && (playerboxY + height/2) < ( obstacleY  + height/2) && (playerboxX - height/2) < (obstacleX + height/2) && (playerboxY + height/2) < (obstacleY + height/2)) {
        gameOver = true;
        fill(255, 90);
        stroke(0);
        strokeWeight(1.5);
        rect(100, 100, 700, 400);
        fill(255);
        textSize(80);
        text("GAME OVER", 270, 360);
        fill(0, 255, 60);
        textSize(50);
        text("reload the page to replay", 200, 450);
        stop();
        print("    true  " + obstacleY);
      }
    }
  }
