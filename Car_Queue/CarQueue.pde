class CarQueue{
  int totalCars;
  Car[] cars;
  
  CarQueue(int length){
    this.cars = new Car[length];
    this.totalCars = 0;
  }
  
  void draw(){
    for(int i = 0;i < cars.length; i++){
      if(cars[i] != null){
        cars[i].draw();
      }
    }
  }
  
  void addCar(){
    int i = 0;
    for(; i < cars.length; i++){
      if(cars[i] == null){
        totalCars ++;
        cars[i] = new Car(totalCars, i);
        return;
      }
    }
    
    if(i == cars.length){
      println("test");
      Car[] newCars = new Car[cars.length * 2];
      for(int j = 0; j < cars.length; j++){
        newCars[j] = cars[j];
      }
      totalCars++;
      newCars[cars.length] = new Car(totalCars, cars.length);      
      cars = newCars;
    }
  }
  
  void removeCar(){
    for(int i = 1; i < cars.length; i++){
      cars[i-1] = cars[i];
      if(cars[i] != null){
        cars[i].moveForward();
      }
    }
    
    cars[cars.length -1] = null;
    
    if(cars[cars.length / 2] == null && cars.length > 5){
      Car[] newCars = new Car[cars.length / 2];
      for(int i = 0; i < cars.length; i++){
        if(cars[i] == null) break;
        else newCars[i] = cars[i];
      }
      
      cars = newCars;
    }
  }
  
  String toString(){
    String output = "";
    
    for(int i = 0; i < cars.length; i++){
      if(cars[i] != null){
        output += cars[i].toString() + " | ";
      }
    }
    
    return output;
  }
}
