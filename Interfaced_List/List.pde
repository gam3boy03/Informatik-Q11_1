class List{
  Node first;
  Node last;
  
  List(){
    first = null;
    last = null;
  }
  
  void enqueue(Item data){
    Node n = new Node(data);
    if(first == null){
      first = n;
    }
    else{
      last.setFollower(n);
    }
    last = n;
  }
  
  Item dequeue(){
    Item temp = null;
    if(first != null){
      temp = first.getData();
      first = first.getFollower();
      if(first == null) last = null;
    }
    return temp;
  }
  
  void render(){
    Node temp = first;
    int x = 0;
    int y = 0;
    while(temp != null){
      temp.getData().render(x,y);
      temp = temp.getFollower();
      x += 100;
    }
  }
}
