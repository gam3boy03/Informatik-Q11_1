class List {
  ListItem first;

  List() {
    first = new Ending();
  }

  void insertAt(DataItem d, DataItem before) {
    first.insertAt(d, before);
  }

  void insertFirst(DataItem d) {
    Node temp = new Node(d);
    temp.setFollower(first);
    first = temp;
  }

  void insertLast(DataItem d) {
    DataItem last = first.getLastItem(null);
    if(last == null) insertFirst(d);
    else first.insertAt(d, last);
  }  

  void removeItem(DataItem data) {
    first = first.removeItem(data);
  }

  DataItem removeFirst() {
    DataItem temp = null;
    temp = first.getData();
    first = first.getFollower();
    return temp;
  }

  DataItem removeLast() {
    DataItem last = first.getLastItem(null);
    if(first != null && last != null)
      if(last.toString().equals(first.getData().toString())) {
        removeFirst();
        return last;  
      }
    first.removeItem(last);
    return last;
  }  

  int getLength() {
    return first.getLength();
  }

  void render() {
      first.renderData(200, 50);
  }

  String toString() {
      return first.toString() + "\n";
  }
}
