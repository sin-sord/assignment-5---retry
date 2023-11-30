int lineCount = 20;

class Line { // identifies that Line is a class with its own code

  public Line() { //similar to a 'void setup()' it sets perameters for various variables
  }

  // draws the line on the canvas
  void drawLine() {
    for (int i = 0; i < lineCount; i++) {
      fill(255);
      stroke(0);
      rect(i*150, 280, 35, 10);
    }
  }
}
