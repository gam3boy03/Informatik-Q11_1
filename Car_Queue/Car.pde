class Car{
  int number;
  int queuePos;
  color col;
  
  Car(int number, int queuePos){
    this.number = number;
    this.queuePos = queuePos;
    this.col = color((int)random(0,255), (int)random(0,255),(int)random(0,255));
  }
  
  void moveForward(){
    this.queuePos --;
  }
  
  void draw(){
    noStroke();
    fill(col);
    rect(queuePos * 100 + 10, 50, 80, 50);
    rect(queuePos * 100 + 25, 30, 60, 20);
    fill(0);
    circle(queuePos * 100 + 30, 100, 20);
    circle(queuePos * 100 + 30 + 40, 100, 20);
    fill(255);
    circle(queuePos * 100 + 30, 100, 5);
    circle(queuePos * 100 + 30 + 40, 100, 5);
    fill(0);
    textAlign(CENTER);
    text("Car: " + number, queuePos * 100 + 50, 150);
  }
  
  String toString(){
    return "Car: "+ number + ", Queue: " + queuePos;
  }
}
