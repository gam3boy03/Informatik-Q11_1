void setup(){  
  Map<Integer, Integer> hashMap = new Map<Integer, Integer>();
  
  for(int i = 0; i < 10000; i++){
    hashMap.put(i % 100, (int)random(0,100));
  }
  
  println(hashMap);
}
