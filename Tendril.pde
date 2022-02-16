class Tendril {
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  /**
   Class constructor
   len is how many segments in this tendril (each a fixed length, 4 is a good start)
   theta is tendril starting angle in radians 
   x, y  is the starting (x,y) coordinate
   */
  public Tendril(int len, double theta, int x, int y) {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show() {
    int nX = myX, nY = myY;
    for(int i = 0; i < myNumSegments; i++) {
      int g = 360/myNumSegments;
      myX = nX;
      myY = nY;
      nX += round((float)(SEG_LENGTH*Math.cos(myAngle + (Math.random() * 2) - 1)));
      nY += round((float)(SEG_LENGTH*Math.sin(myAngle + (Math.random() * 2) - 1)));
      fill(i*g, 100, 100);
      stroke(i*g, 100, 100);
      line(myX, myY, nX, nY);
    }
    if(myNumSegments > 10) {
      Cluster c = new Cluster(myNumSegments/4, myX, myY); 
    }
    ellipse(myX, myY, myNumSegments/5, myNumSegments/5);
  }
}
