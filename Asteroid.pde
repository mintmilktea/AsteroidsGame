class Asteroid extends Floater{
  private double angularSpeed;
  public Asteroid(){
    angularSpeed = (Math.random() * 31)-15;
    corners = 6;
    xCorners = new int[] {8, 12, 4, -10, -8, 0};
    yCorners = new int[] {-6, 0, 8, 6, -6, -8};
    myColor = color(200, 200, 200);
    myCenterX = Math.random()*501;
    myCenterY = Math.random()*501;
    myXspeed = (Math.random()*21)-10;
    myYspeed = (Math.random()*21)-10;
    myPointDirection = Math.random()*361;
  }
  
  public void move(){     
    turn(angularSpeed);
    super.move();   
  }   
  
  public double getCenterX(){
    return myCenterX;
  }
  
  public double getCenterY(){
    return myCenterY;
  }
  
}
