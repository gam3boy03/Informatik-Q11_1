//plants planet on translated 0,0
void drawPlanet(color col, int rad){
  fill(col);
  noStroke();
  circle(0, 0, rad);
}

float earth_radiant = 1.4f;
float moon_radiant = 0f;
float mars_radiant = 0f;

//needs start point at mid,mid
void drawSystem() {  
  float distance_earth = 150;
  float distance_moon = 50;
  float distance_mars = 300;
  
  //draw sun
  drawPlanet(color(255, 204, 0), 80);
  
  //calculate mars position
  float mars_x = sin(mars_radiant) * distance_mars;
  float mars_y = cos(mars_radiant) * distance_mars;
  
  //draw mars
  translate(mars_x, mars_y);
  drawPlanet(color(255, 100, 0), 30);
  translate(-mars_x, -mars_y);
  
  //calculate Earth position
  float earth_x = sin(earth_radiant) * distance_earth;
  float earth_y = cos(earth_radiant) * distance_earth;
  
  //draw earth
  translate(earth_x, earth_y);
  drawPlanet(color(0, 100, 255), 30);
  
  //calculate moon position
  float moon_x = sin(moon_radiant) * distance_moon;
  float moon_y = cos(moon_radiant) * distance_moon;
  
  //draw moon
  translate(moon_x, moon_y);
  drawPlanet(color(128, 128, 128), 10);
}

float[] stars_x;
float[] stars_y;

void generateStars() {
  int columns = 10;
  int rows = 10;
  
  stars_x = new float[columns * rows];
  stars_y = new float[columns * rows];
  
  int size_x = width / columns;
  int size_y = height / rows;
  
  for(int col = 0; col < columns; col ++){
    for(int row = 0; row < rows; row ++){
      float x = random(0, size_x);
      float y = random(0, size_y);
      stars_x[col + row * columns] = x + col * size_x;
      stars_y[col + row * columns] = y + row * size_y;
    }
  }
}

//needs start point at 0,0
void drawStars() {  
  for(int i = 0; i < stars_x.length; i++){
    translate(stars_x[i], stars_y[i]);
    drawPlanet(color(255,255,255), 2);
    translate(-stars_x[i], -stars_y[i]);
  }
}

void setup(){
  size(800,800);
  frameRate(60);
  generateStars();
}

void updateRotation() {
  if(keyPressed) {
    earth_radiant -= 0.01f;
    moon_radiant -= 0.05f;
    mars_radiant -= 0.005f;
  }
  else {
    earth_radiant += 0.01f;
    moon_radiant += 0.05f;
    mars_radiant += 0.005f;
  }
}

float comet_x;
float comet_y;
float cometDir;
Boolean comet = false;

void handleComet(){
  if(mousePressed && !comet){
    comet = true;
    comet_x = mouseX;
    comet_y = mouseY;
    cometDir = random(-PI, PI);
    comet = true;
  }
  
  if(comet_x < 0 || comet_y < 0 ||
      comet_x > width || comet_y > height){
    comet = false;
  }
  
  if(comet){
    if(keyPressed) {
      comet_x -= sin(cometDir);
      comet_y -= cos(cometDir);
    }
    else {
      comet_x += sin(cometDir);
      comet_y += cos(cometDir);
    }
    
    translate(comet_x, comet_y);
    drawPlanet(color(200,200,200), 10);
    translate(-comet_x, -comet_y);
  }
}

void draw() {
  background(0);
  
  drawStars();
  
  
  resetMatrix();
  translate(400, 400);
  drawSystem();
  updateRotation();
  
  
  resetMatrix();
  handleComet();
}
