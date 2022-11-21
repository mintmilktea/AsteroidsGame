class Bullet extends Floater{
  public Bullet(Spaceship player){
    myColor = color(255, 50, 50);
    myCenterX = player.getCenterX();
    myCenterY = player.getCenterY();
    myXspeed = player.getXspeed();
    myYspeed = player.getYspeed();
    myPointDirection = player.getDirection();
    accelerate(6);
  }
  
  public double getCenterX(){
    return myCenterX;
  }
  
  public double getCenterY(){
    return myCenterY;
  }
  
  public void move(){           
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    
  }
  
  public void show(){
    fill(myColor);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 3, 3);
  }
}
