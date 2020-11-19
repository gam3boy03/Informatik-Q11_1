class Generation{

  Generation next;
  
  Boolean[] field;
  
  Generation(Boolean[] field){
    this.field = field;
  }
  
  void generateGeneration(){
    if(next == null){
      Boolean[] newfield = new Boolean[this.field.length];
      for(int i = 1; i < field.length - 1; i++){
        newfield[i] = evaluate(field[i-1], field[i], field[i+1]);
      }
      newfield[0] = evaluate(field[field.length-1], field[0], field[1]);
      newfield[field.length-1] = evaluate(field[field.length-2], field[field.length-1], field[0]);
      next = new Generation(newfield);
    }
    else{
      next.generateGeneration();
    }
  }
  
  void draw() {
    noStroke();
    
    int side = width / field.length;
    for(int i = 0; i < field.length; i++){
      if(field[i]) fill(0);
      else fill(255);
      
      square(side * i, 0, side);
    }
  }
  
  Boolean evaluate(Boolean a, Boolean b, Boolean c){
    if(a && b && c) return false;
    else if(a && b && !c) return true;
    else if(a && !b && c) return true;
    else if(a && !b && !c) return false;
    else if(!a && b && c) return true;
    else if(!a && b && !c) return true;
    else if(!a && !b && c) return true;
    else return false;
  }

}
