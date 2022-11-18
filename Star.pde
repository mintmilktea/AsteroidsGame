class Star{
  private int myC;
  private double myX, myY;
  public Star(){
    myC = 255;
    //myC = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
  public void show(){
    fill(myC);
    ellipse((float)myX, (float)myY, 3, 3);
  }
}
