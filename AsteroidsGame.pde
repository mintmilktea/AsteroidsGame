Spaceship player;
Star[] stars = new Star[100];
ArrayList <Asteroid> meteor;
ArrayList <Bullet> bullet;
int health;
int score;

public void setup(){
  frameRate(40);
  size(500, 500);
  background(0);
  textAlign(CENTER);
  health = 10;
  score = 0;
  player = new Spaceship();
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  meteor = new ArrayList <Asteroid>();
  for(int i = 0; i < 21; i++){
    meteor.add(i, new Asteroid());
  }
  bullet = new ArrayList <Bullet>();
  
  
}

public void draw(){
  background(0);
  
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
  
  for(int i = 0; i < bullet.size(); i++){
    bullet.get(i).show();
    bullet.get(i).move();
  }
  
  player.show();
  player.move();
 
  if(!keyPressed){
    player.resetSpeed();
  }
  
  
  for(int i = 0; i < meteor.size(); i++){
    meteor.get(i).show();
    meteor.get(i).move();
    if(dist((float)player.getCenterX(), (float)player.getCenterY(), (float)meteor.get(i).getCenterX(), (float)meteor.get(i).getCenterY()) < 25){
      meteor.remove(i);
      health--;
      break;
    }
    for(int j = 0; j < bullet.size(); j++){
      if(dist((float)bullet.get(j).getCenterX(), (float)bullet.get(j).getCenterY(), (float)meteor.get(i).getCenterX(), (float)meteor.get(i).getCenterY()) < 25){
        meteor.remove(i);
        bullet.remove(j);
        score+=10;
        break;
      }
    }
    
  }
  
textSize(24);
fill(255);
text("Health: " + health, 440, 20);
text("Score: " + score, 435, 44);

if(health <= 0){
 for(int i = 0; i < meteor.size(); i++){
   meteor.remove(i);
 }
 fill(0);
 rect(0, 0, 500, 500); 
 fill(255);
 text("GAME OVER", 250, 230);
 text("FINAL SCORE: " + score, 250, 260);
 text("RELOAD TO PLAY AGAIN", 250, 290);
}else if(meteor.size() == 0){
 fill(0);
 rect(0, 0, 500, 500); 
 fill(255);
 text("YOU WIN!", 250, 230);
 text("FINAL SCORE: " + score, 250, 260);
 text("RELOAD TO PLAY AGAIN", 250, 290);
}

}

public void keyPressed(){
  if (key == 'w'){
    player.accelerate(1);
  }

  if(key == 'a'){
    
    player.turn(-5);
    player.resetSpeed();
  }
  
  if(key == 'd'){
    
    player.turn(5);
    player.resetSpeed();
  }
  
  if(key == ' '){
    bullet.add(new Bullet(player));
  }
  
  if(key == 'f'){
    player.hyperspace();
  }
  

}
