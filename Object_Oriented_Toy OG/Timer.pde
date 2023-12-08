////  used https://www.youtube.com/watch?app=desktop&v=c8sc_w-g3-A
//----------------------------origianl timer from video
//float Timer;
//class Timer {

//  Timer(float set) {
//    Timer = set;
//  }
//  float getTime() {
//    return(Timer);
//  }
//  void setTime(float set) {
//    Timer = set;
//  }
//  void countUp() {
//    Timer +=1/frameRate;
//  }
//}


//-------------------------my own version of the timer
float timer;
float set;
float getTime;
class time {

  public time(float set) {
    timer = set;
  }
  float getTime() {
    return(timer);
  }

  void setTime(float set) {
    timer = set;
  }
  void timeCount() {
    timer +=1/frameRate;
  }
}
