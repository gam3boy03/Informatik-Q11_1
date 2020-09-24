void setup() {
  List<String> list = new List<String>();
  
  list.add("Hallo 123");
  list.add("test");
  list.add("Mr.Meyer");
  
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
  
  println("\nget test:");
  println("8: " + list.get(8));
}
