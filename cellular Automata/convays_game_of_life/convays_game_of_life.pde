int PIXELSIZE = 5;

Boolean[][] field;
Boolean[][] temp;

int generation = 0;

void setup(){
  size(800,800);
  frameRate(10);
  noStroke();
  
  reset();
}

void draw(){
  generate();
  render();
  
  fill(255,0,0);
  textSize(20);
  text(generation, 20, 20);
  
  generation++;
}

void keyPressed(){
  if(key == 'r'){
    reset();
  }
}

void reset(){
  field = new Boolean[width / PIXELSIZE][height / PIXELSIZE];

  fillRandomly();
  
  temp = field;
  
  generation = 0;
}

void makeGlider(){
  setupForForm();
  
  set(5, 4);
  set(6, 5);
  set(6, 6);
  set(5, 6);
  set(4, 6);
}

void makeGliderGun(){
  setupForForm();
  
  set(1, 5);
  set(2, 5);
  set(1, 6);
  set(2, 6);
  
  set(14, 3);
  set(13, 3);
  set(12, 4);
  set(11, 5);
  set(11, 6);
  set(11, 7);
  set(12, 8);
  set(13, 9);
  set(14, 9);
  
  set(15, 6);
  
  set(16, 4);
  set(17, 5);
  set(17, 6);
  set(18, 6);
  set(17, 7);
  set(16, 8);
  
  set(23,2);
  set(21, 3); set(22, 3);
  set(21, 4); set(22, 4);
  set(21, 5); set(22, 5);
  set(23, 6);
  
  set(25, 1);
  set(25, 2);
  
  set(25, 6);
  set(25, 7);
  
  set(35, 3);
  set(36, 3);
  set(35, 4);
  set(36, 4);

}

void setupForForm(){
  for(int x = 0; x < field.length; x++)
    for(int y = 0; y < field[0].length; y++)
      field[x][y] = false;
}

void set(int x, int y){
  field[x][y] = true;
}

void fillRandomly(){
  for(int x = 0; x < field.length; x++)
    for(int y = 0; y < field[0].length; y++){
      field[x][y] = random(1) > 0.5f;
    }
}

Boolean evaluate(int x, int y){
  int count = 0;
  int maxX = field.length - 1;
  int maxY = field[0].length - 1;
  
  if(x + 1 > maxX) count += field[0][y] ? 1 : 0;
  else count += field[x + 1][y] ? 1 : 0;
  
  if(x - 1 < 0) count += field[maxX][y] ? 1: 0;
  else count += field[x - 1][y] ? 1 : 0;
  
  if(y + 1 > maxY) count += field[x][0] ? 1: 0;
  else count += field[x][y + 1] ? 1: 0;
  
  if(y - 1 < 0) count += field[x][maxY] ? 1: 0;
  else count += field[x][y - 1] ? 1: 0;
  
  if(y - 1 < 0 && x - 1 < 0) count += field[maxX][maxY] ? 1 : 0;
  else if(y - 1 < 0) count += field[x - 1][maxY] ? 1 : 0;
  else if(x - 1 < 0) count += field[maxX][y - 1] ? 1 : 0;
  else count += field[x - 1][y - 1] ? 1 : 0;
  
  if(y + 1 > maxY && x + 1 > maxX) count += field[0][0] ? 1 : 0;
  else if(y + 1 > maxY) count += field[x + 1][0] ? 1 : 0;
  else if(x + 1 > maxX) count += field[0][y + 1] ? 1 : 0;
  else count += field[x + 1][y + 1] ? 1 : 0;
  
  if(y + 1 > maxY && x - 1 < 0) count += field[maxX][0] ? 1 : 0;
  else if(y + 1 > maxY) count += field[x - 1][0] ? 1 : 0;
  else if(x - 1 < 0) count += field[maxX][y + 1] ? 1 : 0;
  else count += field[x - 1][y + 1] ? 1 : 0;
  
  if(y - 1 < 0 && x + 1 > maxX) count += field[0][maxY] ? 1 : 0;
  else if(y - 1 < 0) count += field[x + 1][maxY] ? 1 : 0;
  else if(x + 1 > maxX) count += field[0][y - 1] ? 1 : 0;
  else count += field[x + 1][y - 1] ? 1 : 0;
  
  //  X | X | X
  //  X | X | X
  //  X | X | X
    
  if(count == 3) return true;
  else if(count >= 2 && count <= 3 && field[x][y]) return true;
  else return false;
}

void generate(){
  temp = new Boolean[width / PIXELSIZE][height / PIXELSIZE];
  for(int x = 0; x < field.length; x++)
    for(int y = 0; y < field[0].length; y++){
      temp[x][y] = evaluate(x,y);
    }
   
  field = temp;
}

void render(){
  for(int x = 0; x < field.length; x++)
    for(int y = 0; y < field[0].length; y++){
      fill(field[x][y]? 0: 255);
      square(x * PIXELSIZE,y * PIXELSIZE, PIXELSIZE);
    }
}
