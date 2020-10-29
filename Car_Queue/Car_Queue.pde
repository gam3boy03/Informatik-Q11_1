CarQueue carQueue;

void setup(){
  size(1500,200);
  carQueue = new CarQueue(15);
}

void draw(){
  background(125);
  noStroke();
  fill(0,255,0);
  rect(0,0, 100, height);
  carQueue.draw();
}

void fillQueue(int amount){
  for(int i = 0; i < amount; i++) carQueue.addCar();
}

void clearQueue(int amount){
  for(int i= 0; i < amount; i++) carQueue.removeCar();
}

void keyPressed(){
  if(key == '+'){
    carQueue.addCar();
  }
  else if(key == '-'){
    carQueue.removeCar();
  }
  else if(key == 'a'){
    fillQueue(100000);
  }
  else if(key == 'r'){
    clearQueue(100000);
  }
  println(carQueue.cars.length);
  //println(carQueue);
}
