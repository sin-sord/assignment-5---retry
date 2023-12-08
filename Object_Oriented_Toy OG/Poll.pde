PVector pollPosition1;
PVector pollSpeed1;

boolean PollLeft;
boolean PollRight;

ArrayList<Poll> Snow = new ArrayList<Poll>();

color fillLight;

class Poll {

  public Poll() {
    //Barrel 1
    pollPosition1 = new PVector (0, 300);
    pollSpeed1 = new PVector (-8, 0);

    PollLeft=false;
    PollRight=false;
  }

  void pollMove() {
    pollPosition1.add(pollSpeed1);
    if (pollPosition1.x < - 180) {
      pollPosition1.x=2000;
    }
  }


  void drawPoll1() {
    //front light post
    ellipseMode(CENTER);
    noStroke();
    fill(#F72702, 90);
    ellipse(pollPosition1.x+15, pollPosition1.y-30, 250, 200);
    stroke(0);
    fill(#9B1317);
    rect(pollPosition1.x, pollPosition1.y+40, 30, 150);
  }

  void mousePressed()
  {
    switch(fillLight) {
    case #F72702:
      fillLight = color(#DE0929);
      break;
       default:
      fillLight = color(#FFB13B);
      break;
    }
  }
}
