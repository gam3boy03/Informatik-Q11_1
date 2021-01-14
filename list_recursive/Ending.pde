class Ending extends ListItem {
  Ending() {}
  
  DataItem getData() {return null;}
  
  ListItem getFollower() {return this;}
  
  void setFollower(ListItem i) {}
  
  void insertAt(DataItem d, DataItem before) {print("The before is not there");}
    
  ListItem removeItem(DataItem d) {return this;}
  
  DataItem getLastItem(DataItem d) {return d;}
  
  int getLength() {return 0;}
  
  void renderData(float x, float y) {}
  
  String toString() {return " | END ";}
}
