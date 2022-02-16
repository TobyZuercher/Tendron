public class Cluster {
    public final static int NUM_STEMS = 7; //number of tendrils per cluster

    public Cluster(int len, int x, int y) {
      Tendril[] t = new Tendril[NUM_STEMS];
      for(Tendril temp : t) {
        temp = new Tendril(len, (Math.random() * 2*PI), x, y);
        temp.show();
      }
    }
}
