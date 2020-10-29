class CarWithSkibox extends Car{
  color skibox;
  
  CarWithSkibox(String label, color col, color skibox){
    super(label, col);
    this.skibox = skibox;
  }
  
  void render(int x, int y){
    super.render(x,y);
    fill(skibox);
    rect(x+15, y+10, 70,20);
  }
}
