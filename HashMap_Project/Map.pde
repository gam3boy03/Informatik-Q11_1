class Map<K, V>{
  Dict<K,V>[] hashMap;
  
  Map(){
    hashMap = new Dict[16];
    
    for(int i = 0; i < hashMap.length; i++){
      hashMap[i] = new Dict<K,V>();
    }
  }
  
  String toString(){
    String output = "";
    for(int i = 0; i < hashMap.length; i++){
      output += i + ": " + hashMap[i].toString() + ";\n";
    }
    return output;
  }
  
  void put(K key, V value){
    int hash = hash(key);
    hashMap[hash].put(key, value);
  }
  
  int hash(K key){
    return key.hashCode() % (hashMap.length);
  }
  
  V get(K key){
    int hash = hash(key);
    return hashMap[hash].get(key);
  }
  
  V remove(K key){
    int hash = hash(key);
    return hashMap[hash].remove(key);
  }
}
