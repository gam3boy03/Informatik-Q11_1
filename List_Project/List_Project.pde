void setup() {
  List<String> list = new List<String>();
  
  list.add("Hallo 123");
  list.add("test");
  list.add("Mr.Meyer");
  for(int i = 0; i < 10; i++) list.add("num: " + i);
  
  println("\nprint test:");
  list.print();
  
  println("\ncontains test:");
  println("\"Hallo 123\": " + list.contains("Hallo 123"));
  println("\"test\": " + list.contains("test"));
  println("\"Mr. Meyer\": " + list.contains("Mr. Meyer"));
  
  println("\nindexof test:");  
  println("Index of \"test\": " + list.indexOf("test"));
  println("Index of \" \": " + list.indexOf(" "));
  
  println("\nlength: ");
  println(list.length());
 
  println("\ntoArray test:");
  println(list.toArray());
  
  println("\nremovveFirst test:");
  list.removeFirst();
  list.print();
  
  println("\nFill test: ");
  for(int i = 0; i < 10000; i++) list.add("num: " + i);
  println(list.length());
  
  println("\nRemove test:");
  for(int i = 0; i < 10000; i++) list.removeFirst();
  println(list.length());
  
  println("\nget test:");
  println("8: " + list.get(8));
  
  println("\nremove 8 test:");
  println(list.length());
  list.removeAt(8);
  println("8: " + list.get(8));
  println(list.length());
  
  println("\nremove Last test:");
  list.removeLast();
  println(list.length());
}
