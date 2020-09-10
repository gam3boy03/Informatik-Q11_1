int[] zufallszahlen = new int[6];

void setup() {
  size(200, 700);
  
  for(int i = 0; i < zufallszahlen.length; i++){
    int zahl;
    do{
      zahl = (int)random(6, 49);
    } while(contains(zufallszahlen, zahl));
    zufallszahlen[i] = zahl;
  }
}

Boolean contains(int[] array, int value){
  for( int i = 0; i < array.length; i++){
    if(array[i] == value)
      return true;
  }
  return false;
}

void draw(){
  textAlign(CENTER, CENTER);
  textSize(15);  
  translate(100, 0);
  background(128);
  for(int i = 0; i < zufallszahlen.length; i++){
    translate(0, 100);
    drawBall(0,0, zufallszahlen[i]);
  }
}

void drawBall(int x, int y, int value){
  fill(255);
  ellipse(x, y, 50, 50);
  fill(0);
  text(value, x, y);
}
