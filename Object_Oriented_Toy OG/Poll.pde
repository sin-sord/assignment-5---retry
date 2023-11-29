PVector pollPosition1;
PVector pollSpeed1;

boolean PollLeft;
boolean PollRight;

class Poll {

  public Poll() {
    //Barrel 1
    pollPosition1 = new PVector (0, 300);
    pollSpeed1 = new PVector (-5,00);

    PollLeft=false;
    PollRight=false;
  }

  void pollMove() {
    pollPosition1.add(pollSpeed1);
    if (pollPosition1.x < - 50) {
      pollPosition1.x=1875;
    }
  }


  void drawPoll1() {
    stroke(0);
    fill(#9B1317);
    rect(pollPosition1.x, pollPosition1.y+40, 30, 150);
  }
}
