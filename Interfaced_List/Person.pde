class Person implements Item{
  String name;
  int age;
  
  Person(String name, int age){
    this.name = name;
    this.age = age;
  }
  
  void render(int x, int y){
    noStroke();
    fill(#FFE033);
    circle(x + 50,y + 50, 50);
    fill(255);
    arc(x + 50,y + 55, 30, 25, 0, 3.14);
    circle(x + 40, y + 45, 10);
    circle(x + 40 + 20, y + 45, 10);
    fill(0);
    textAlign(CENTER);
    text(name + ": " + age, x + 50, y + 120);
  }
  
  String toString(){
    return name + " " + age;
  }
}
