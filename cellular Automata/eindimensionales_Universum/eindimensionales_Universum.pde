Generation gen;

void setup(){
  size(1000,800);
  frameRate(30);
  makeStart();
}

void draw(){
  gen.generateGeneration();
  
  int side = width / gen.field.length;
  background(128);
  Generation x = gen;
  while(x != null){
    x.draw();
    x = x.next;
    translate(0 , side);
  }
}

void keyPressed(){
  //if(key == '\n'){
  //  gen.generateGeneration();
  //}
  if(key == 'c'){
    makeStart();
  }
}

void makeStart(){
  Boolean[] field = oneoneoField(100);
  gen = new Generation(field);
}

Boolean[] alternatingField(int l){
  Boolean[] field = new Boolean[l];
  for(int i = 0; i < field.length; i++){
    field[i] = i % 2 == 0;
  }
  return field;
}

Boolean[] randomField(int l){
  Boolean[] field = new Boolean[l];
  for(int i = 0; i < field.length; i++){
    field[i] = random(1) < 0.3;
  }
  return field;
}

Boolean[] oneoneoField(int l){
  Boolean[] field = new Boolean[l];
  for(int i = 0; i < field.length; i++){
    field[i] = false;
  }
  field[0] = true;
  return field;
}
