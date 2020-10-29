class Car implements Item{
  String label;
  color col;
  
  Car(String label, color col){
    this.label = label;
    this.col = col;
  }
  
  void render(int x, int y){
    noStroke();
    fill(col);
    rect(x + 10, y + 50, 80, 50);
    rect(x + 25, y + 30, 60, 20);
    fill(0);
    circle(x + 30, y + 100, 20);
    circle(x + 30 + 40, y + 100, 20);
    fill(255);
    circle(x + 30, y + 100, 5);
    circle(x + 30 + 40, y + 100, 5);
    fill(0);
    textAlign(CENTER);
    text(label, x + 50, y + 120);
  }
  
  String toString(){
    return label;
  }
}
