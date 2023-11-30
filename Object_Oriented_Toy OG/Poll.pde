PVector pollPosition1;
PVector pollSpeed1;

PVector pollPosition2;
PVector pollSpeed2;

boolean PollLeft;
boolean PollRight;

class Poll {

  public Poll() {
    //Barrel 1
    pollPosition1 = new PVector (0, 300);
    pollSpeed1 = new PVector (-5, 0);

    pollPosition2 = new PVector (0, 20);
    pollSpeed2 = new PVector (-5, 0);

    PollLeft=false;
    PollRight=false;
  }

  void pollMove() {
    pollPosition1.add(pollSpeed1);
    if (pollPosition1.x < - 180) {
      pollPosition1.x=2000;
    }

    pollPosition2.add(pollSpeed2);
    if (pollPosition2.x < - 200) {
      pollPosition2.x=4500;
    }
  }


  void drawPoll1() {
    //front light post
    ellipseMode(CENTER);
    noStroke();
    fill(#FCFFB4, 90);
    ellipse(pollPosition1.x+15, pollPosition1.y-30, 250, 200);
    stroke(0);
    fill(#9B1317);
    rect(pollPosition1.x, pollPosition1.y+40, 30, 150);

    //back light post
    stroke(0);
    fill(#9B1317);
    rect(pollPosition2.x-25, pollPosition2.y-75, 30, 150);
    ellipseMode(CENTER);
    noStroke();
    fill(#FCFFB4, 90);
    ellipse(pollPosition2.x-15, pollPosition2.y+250, 250, 200);
  }
}
