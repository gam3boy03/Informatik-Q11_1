abstract class ListItem {
  abstract DataItem getData();
  abstract ListItem getFollower();
  abstract void setFollower(ListItem i);
  abstract void insertAt(DataItem d, DataItem before);
  abstract ListItem removeItem(DataItem d);
  abstract DataItem getLastItem(DataItem d);
  abstract int getLength();
  
  abstract void renderData(float x, float y);
  abstract String toString();
}
