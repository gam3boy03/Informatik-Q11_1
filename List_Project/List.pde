class List<T extends Object>{
  
  Node<T> firstNode;
  
  void add(T value) {
    if(firstNode != null) {
      firstNode.add(value);
    }
    else {
      firstNode = new Node<T>(value);
    }
  }
  
  T get(int index){
    if(firstNode != null){
      return firstNode.get(index);
    }
    else{
      return null;
    }
  }
  
  int length() {
    if(firstNode != null){
      return firstNode.length();
    }
    else {
      return 0;
    }
  }
  
  void print(){
    firstNode.print(0);
  }
  
  Boolean contains(T value){
    return firstNode.contains(value);
  }
  
  int indexOf(T value){
    return firstNode.indexOf(value, 0);
  }
  
  T[] toArray(){
    int length = this.length();
    T[] out = (T[]) new Object[length];
    if(firstNode == null){
      return out;
    }
    else{
      return firstNode.toArray(out, 0);
    }
  }
  
  List(){
    
  }
  
}
