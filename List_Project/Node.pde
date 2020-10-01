class Node<T extends Object>{
  T value;
  Node<T> next;
  
  void add(T value){
    if(next != null){
      next.add(value);
    }
    else{
      next = new Node(value);
    }
  }
  
  void print(int i){
    println(i + ": " + value);
    if(next != null){
      next.print(i + 1);
    }
  }
  
  int length(){
    if(next != null){
      return next.length() + 1;
    }
    else{
      return 1;
    }
  }
  
  Boolean contains(T value) {
    if(this.value == value){
      return true;
    }
    else{
      if(next != null){
        return next.contains(value);
      }
      else{
        return false;
      }
    }
  }
  
  int indexOf(T value, int i){
    if(this.value == value){
      return i;
    }
    else{
      if(next != null){
        return next.indexOf(value, i + 1);
      }
      else{
        return -1;
      }
    }
  }
  
  T[] toArray(T[] out, int i){
    out[i] = value;
    
    if(next != null){
      out = next.toArray(out, i + 1);
    }
    
    return out;
  }
  
  T get(int index){
    if(index == 0){
      return value;
    }
    else{
      if(next != null){
        return next.get(index - 1);
      }
      else{
        return null;
      }
    }
  }
  
  void removeAt(int index){
    if(index == 0 && next != null) next = next.next;
    else next.removeAt(index - 1);
  }
  
  void removeLast(){
    if(next.next == null) next = null;
    else next.removeLast();
  }
  
  Node(T value){
    this.value = value;
  }
}
