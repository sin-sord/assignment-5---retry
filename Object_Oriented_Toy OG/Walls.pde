class Wall {

  void backWall() {
    //draws the wall
    stroke(0);
    fill(#580B0D);
    rect(0, 45, width, 50);
    // shading under the top of the wall
    noStroke();
    fill(#400C0E);
    rect(0, 45, width, 30);

    //draws the top side of the wall
    stroke(0);
    fill(#861A1D);
    rect(0, 40, width, 20);

    //draws the top of the wall
    fill(#861A1D);
    rect(0, 35, width, 15);

    //light post(front wall)
    stroke(0);
    fill(#9B1317);
    rect(map((frameCount*3.2)%800, -100, 800, 800, -100), -55, 30, 150);
    rect(map((frameCount*3.2)%1200, -100, 1200, 1200, -100), -55, 30, 150);
    rect(map((frameCount*3.2)%1600, -100, 1600, 1600, -100), -55, 30, 150);
    rect(map((frameCount*3.2)%2000, -100, 2000, 2000, -100), -55, 30, 150);
    rect(map((frameCount*3.2)%2400, -100, 2400, 2400, -100), -55, 30, 150);
    rect(map((frameCount*3.2)%2800, -100, 2800, 2800, -100), -55, 30, 150);
    rect(map((frameCount*3.2)%3200, -100, 3200, 3200, -100), -55, 30, 150);
  }




  void frontWall() {
    //light post(front wall)
    stroke(0);
    fill(#9B1317);
    rect(map((frameCount*3.2)%800, -100, 800, 800, -100), 200, 30, 150);
    rect(map((frameCount*3.2)%1200, -100, 1200, 1200, -100), 200, 30, 150);
    rect(map((frameCount*3.2)%1600, -100, 1600, 1600, -100), 200, 30, 150);
    rect(map((frameCount*3.2)%2000, -100, 2000, 2000, -100), 200, 30, 150);
    rect(map((frameCount*3.2)%2400, -100, 2400, 2400, -100), 200, 30, 150);
    rect(map((frameCount*3.2)%2800, -100, 2800, 2800, -100), 200, 30, 150);
    rect(map((frameCount*3.2)%3200, -100, 3200, 3200, -100), 200, 30, 150);

    //draws the wall at the front edge of the road
    stroke(0);
    fill(#580B0D);
    rect(0, 280, width, 100);
    // shading under the top of the wall
    noStroke();
    fill(#400C0E);
    rect(0, 280, width, 50);

    //draws the top side of the wall
    stroke(0);
    fill(#861A1D);
    rect(0, 290, width, 20);

    //draws the top of the wall
    stroke(0);
    fill(#9B1317);
    rect(0, 280, width, 15);
  }
}
