class Node<K, V>{
  Node<K,V> next;
  
  K key;
  V value;
  
  Node(K key, V value){
    this.key = key;
    this.value = value;
  }
  
  String toString(){
    if(next != null)
      return "(" + key.toString() + ": " + value.toString() + ") | " + next.toString();
    return "(" + key.toString() + ": " + value.toString() + ")";
  }
  
  void put(K key, V value){
    if(key == this.key) this.value = value;
    else if(next != null) next.put(key,value);
    else next = new Node<K,V>(key, value);
  }
  
  V get(K key){
    if(this.key == key) return value;
    else if(next != null) return next.get(key);
    else return null;
  }
  
  V remove(K key){
    if(next == null) return null;
    else if(next.key == key) {
      V value = next.value;
      next = next.next;
      return value;
    }
    else return next.remove(key);
  }
}
