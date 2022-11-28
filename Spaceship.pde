class Spaceship extends Floater{  
  public Spaceship(){
    corners = 10;
    xCorners = new int[] {-18, -14, -18, 0, 14, 20, 14, 0, -18, -14};
    yCorners = new int[] {0, -6, -18, -6, -4, 0, 4, 6, 18, 6};
    myColor = color(255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void resetSpeed(){
    myXspeed = myYspeed = 0;
  }
  
  public double getCenterX(){
   return myCenterX;
  }
  
  public double getCenterY(){
   return myCenterY;
  }
  
  public double getXspeed(){
   return myXspeed;
  }
  
  public double getYspeed(){
   return myYspeed;
  }
  
  public double getDirection(){
   return myPointDirection;
  }
  
  
  public void hyperspace(){
    myYspeed = myXspeed = 0;
    myCenterX = Math.random()*500;
    myCenterY = Math.random()*500;
    myPointDirection = Math.random()*361;
  }
}
