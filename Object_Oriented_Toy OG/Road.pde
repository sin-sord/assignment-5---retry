int lightCount = 10;

class Road {

  void roadDraw() {
    // draws the road
    stroke(0);
    fill(150);
    rect(0, 90, width, 400);
  }
  void Lights() {
    for (int i = 0; i < lightCount; i++) {
      ellipseMode(CENTER);
      noStroke();
      fill(#FCFFB4, 90);
      ellipse(i*450, 280, 250, 200);
    }
  }
}
