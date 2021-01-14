List l;      //Ein Objekt der zu erstellenden Klasse ArrayQueue
DataItem currentItem;//Das aktuell entnommene Auto aus der Warteschlange

//Variablen für Tests
DataItem removeItem = null;
DataItem beforeItem = null;

String[] labels = {"DGF V ", "M V ", "LA X ", "DEG T ", "HH O ", "RO U ", "N E ", "PA I "};
String[] names = {"Selma", "Patty", "Lisa", "Homer", "Bart", "Moe", "Barney", "Marge", "Edna", "Monty"};
color[] colors = {#92a8d1, #034f84, #f7cac9, #f7786b, #deeaee, #b1cbbb, #eea29a, #c94c4c};

void setup() {
  size(1000, 400);
  background(225);

  l = new List(); //Ein Objekt der zu erstellenden Klasse ArrayQueue
}

void draw() {
  background(225);
  fill(0, 200, 0);
  noStroke();

  rectMode(CENTER);          //Die Mautstation wird als grünes Rechteck dargestellt
  rect(50, 50, 100, 100);

  if (currentItem != null) {  //Das entnommene Auto wird nur gerendert, wenn eines vorhanden ist
    currentItem.render(50, 50);
  }

  l.render();                //Rendern der ganzen Warteschlange -> muss implementiert werden
}

void keyPressed() {
  //Bisherige Funktionen
  if (key == 'd') {
    //Das erste Auto wird aus der Queue entnommen 
    //-> muss implementiert werden
    currentItem = l.removeFirst();
  }
  if (key == 'e') {
    //Ein neues Auto wird erzeugt und in die Liste eingefügt
    //-> muss implementiert werden
    l.insertLast(new Car(colors[(int)random(0, colors.length)], labels[(int)random(0, labels.length)] + (int)random(1, 50))); 
    //l.insertLast(new Person(names[(int)random(0, names.length)], (int)random(1900, 2020)));
  }

  //Testfälle
  //Fülle Liste
  if (key == '1') {
    l.insertLast(new Car(colors[(int)random(0, colors.length)], "Test 1"));
    l.insertLast(new Car(colors[(int)random(0, colors.length)], "Test 2"));

    beforeItem = new Car(colors[(int)random(0, colors.length)], "Test before");
    l.insertLast(beforeItem);

    removeItem = new Car(colors[(int)random(0, colors.length)], "Test remove");
    l.insertLast(removeItem);

    l.insertLast(new Car(colors[(int)random(0, colors.length)], "Test 5"));
  }
  if (key == '2') {
    currentItem = l.removeFirst();
  }
  if (key == '3') {
    currentItem = l.removeLast();
  }
  if (key == '4') {
    l.removeItem(removeItem);
  }
  if (key == '5') {
    l.insertFirst(new Car(colors[(int)random(0, colors.length)], "Insert F Test"));
  }
  if (key == '6') {
    l.insertLast(new Car(colors[(int)random(0, colors.length)], "Insert L Test"));
  }
  if (key == '7') {
    l.insertLast(new Car(colors[(int)random(0, colors.length)], "Insert L Test"));
  }
  if (key == '8') {
    println(beforeItem.toString());
    l.insertAt(new Car(colors[(int)random(0, colors.length)], "Insert B Test"), beforeItem);
  }
  //Textausgabe der Warteschlange
  //toString erzeugt eine Textdarstellung der Queue
  //-> muss implementiert werden
  print(/*l.getLength() + ": " +*/ l.toString());
}
