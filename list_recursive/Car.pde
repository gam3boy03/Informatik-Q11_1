class Car implements DataItem {

  color col;       //Farbe des Autos
  String label;    //"Nummernschild"

  /**
   Konstruktor
   Für die Farbe wird ein Hexadezimalwert verwendet, z. B. #FF00FF
   */
  Car(color colorNew, String labelNew) {
    this.col = colorNew;
    this.label = labelNew;
  }

  /**
   Zeichnen des Autos
   Um die Ausgabe flexibler zu machen, lässt sich die Position 
   über Parameter festlegen und ist nicht in Attributen gespeichert.
   */
  void render(float x, float y) {
    fill(col);
    rectMode(CENTER);
    rect(x, y, 80, 25);
    rect(x, y - 20, 40, 15);
    fill(#000000);
    ellipse(x - 20, y + 10, 15, 15);
    ellipse(x + 20, y + 10, 15, 15);

    fill(0);
    textAlign(CENTER);
    text(label, x, y);
  }

  /**
   Erzeugt eine Textrepräsentation des Autos.
   In diesem Fall wird nur das Label verwendet.
   */
  String toString() {
    return label;
  }
}
