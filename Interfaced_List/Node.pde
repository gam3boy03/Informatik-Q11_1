class Node{
  Node follower;
  Item data;
  
  Node(Item data){
    this.data = data;  
  }
  
  Item getData(){
    return data;
  }
  
  Node getFollower(){
    return follower;
  }
  
  void setFollower(Node n){
    follower = n;
  }
}
