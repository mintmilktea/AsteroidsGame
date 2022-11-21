Spaceship player;
Star[] stars = new Star[100];
ArrayList <Asteroid> meteor;

public void setup(){
  frameRate(40);
  size(500, 500);
  background(0);
  player = new Spaceship();
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
  meteor = new ArrayList <Asteroid>();
  for(int i = 0; i < 11; i++){
    meteor.add(i, new Asteroid());
  }
}

public void draw(){
  background(0);
  player.show();
  player.move();
  for(int i = 0; i < meteor.size(); i++){
    meteor.get(i).show();
    meteor.get(i).move();
    if(dist((float)player.getCenterX(), (float)player.getCenterY(), (float)meteor.get(i).getCenterX(), (float)meteor.get(i).getCenterY()) < 25){
      meteor.remove(i);
    }
  }
  if(!keyPressed){
    player.deccelerate();
  }
  for(int i = 0; i < stars.length; i++){
    stars[i].show();
  }
}

public void keyPressed(){
  if (key == 'w'){
    player.accelerate(1);
  }

  if(key == 'a'){
    player.turn(-5);
  }
  
  if(key == 'd'){
    player.turn(5);
  }
  
  if(key == ' '){
    player.hyperspace();
  }
  
}
