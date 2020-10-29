List queue;

JSONArray names;

void setup(){
  names = loadJSONArray("first-names.json");
  queue = new List();
  size(800, 200);
  
  background(218);
}

void draw(){
  background(218);
  queue.render();
}

void keyPressed(){
  if(key == 'e'){
    if(random(0,1) < 0.6f)
      if(random(0,1) < 0.5f)
        queue.enqueue(
          new Car(
            "M " +
            (char) int(random(65, 90)) +
            (char) int(random(65, 90)) +
            " " +
            (int)random (100, 999),
            color(random(0,255), random(0,255), random(0,255))
          )
        );
      else
        queue.enqueue(
          new CarWithSkibox(
            "M " +
            (char) int(random(65, 90)) +
            (char) int(random(65, 90)) +
            " " +
            (int)random (100, 999),
            color(random(0,255), random(0,255), random(0,255)),
            color(random(0,100))
          )
        );
    else
      queue.enqueue(
        new Person(
          names.getString((int) random (0, names.size())),
          (int)random(1960, 2005)
        )
      );
  }
  else if(key == 'd'){
    queue.dequeue();
  }
  
}
