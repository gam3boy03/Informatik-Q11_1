class Planet{
  float center_x;
  float center_y;
  float angle;
  float speed;
  
  float radius;
  color col;
  
  Planet child;
  
  Planet(float center_x, float center_y, float speed, float radius, color col){
    this.center_x = center_x;
    this.center_y = center_y;
    this.speed = speed;
    
    this.radius = radius;
    this.col = col;
  }
  
  void update(){
    angle += speed * millis();
  }
  
  void draw() {
    float x = sin(angle);
    float y = cos(angle);
    
    
  }
}
