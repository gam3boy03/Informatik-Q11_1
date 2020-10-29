class Dict<K,V>{
  Node<K,V> firstNode;
  
  Dict(){
  
  }
  
  String toString(){
    if(firstNode != null) return firstNode.toString();
    else return "null";
  }
  
  void put(K key, V value){
    if(firstNode != null) firstNode.put(key, value);
    else firstNode = new Node<K,V>(key, value);
  }
  
  V get(K key){
    return firstNode.get(key);
  }
  
  V remove(K key){
    if(firstNode == null) return null;
    else if(firstNode.key == key) {
      V value = firstNode.value;
      firstNode = firstNode.next;
      return value;
    }
    else return firstNode.remove(key);
  }
}
