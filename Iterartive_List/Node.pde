import java.util.*;

class Node<T> implements Iterator<T>{
  
  Node<T> next;
  T value;
  
  Node(T value){
    this.value = value;
  }
  
  Node(T value, Node<T> next){
    this.value = value;
    this.next = next;
  }
  
  boolean hasNext(){
    return next != null;
  }
  
  T next(){
    return value;
  }
  
  void remove(){
    if(next != null)
      next = next.next;
  }
}
