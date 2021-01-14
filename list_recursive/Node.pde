class Node extends ListItem{
  ListItem follower;
  DataItem data;

  Node(DataItem data) {
    this.data = data;
    follower = null;
  }

  DataItem getData() {
    return data;
  }

  ListItem getFollower() {
    return follower;
  }

  void setFollower(ListItem i) {
    follower = i;
  }

  void insertAt(DataItem data, DataItem before) {
    if (this.data.equals(before)) {
      Node temp = new Node(data);
      temp.setFollower(follower);
      follower = temp;
      return;
    }
    follower.insertAt(data, before);
  }

  ListItem removeItem(DataItem data) {
    if (this.data.toString().equals(data.toString())) {
      return follower;
    } else {
      follower = follower.removeItem(data);
      return this;
    }
  }

  DataItem getLastItem(DataItem data) {
      return follower.getLastItem(this.data);
  }

  int getLength() {
      return follower.getLength() + 1;
  }

  void renderData(float x, float y) {
      data.render(x, y);
      follower.renderData(x + 100, y);
  }

  String toString() {
      return data.toString() + " > " + follower.toString();
  }
}
