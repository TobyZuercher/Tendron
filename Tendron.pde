public void setup() {
  size(500, 500);  
  background(0);
  noLoop();
  colorMode(HSB, 360, 100, 100, 100);
}

public void draw() {
  background(0);
  Cluster c = new Cluster(50, 250, 250); // initial number of segments in the tendril and starting (x,y) coordinate
}
public void mousePressed() {
  redraw();
}
