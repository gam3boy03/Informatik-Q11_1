class Person implements DataItem {

  String name;       //Farbe des Autos
  int yearOfBirth;    //"Nummernschild"

  Person(String name, int yearOfBirth) {
    this.name = name;       
    this.yearOfBirth = yearOfBirth;
  }

  void render(float x, float y) {
    fill(255, 255, 0);
    ellipse(x, y, 60, 60);

    fill(0);
    ellipse(x-10, y-5, 9, 9);
    ellipse(x+10, y-5, 9, 9);

    arc(x, y+10, 20, 20, 0, PI);

    fill(0);
    textAlign(CENTER);
    text(toString(), x+5, y+40);
  }

  String toString() {
    return name + " - " + yearOfBirth;
  }
}
