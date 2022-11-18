Spaceship player;
Star[] stars = new Star[100];

public void setup(){
  frameRate(40);
  size(500, 500);
  background(0);
  player = new Spaceship();
  for(int i = 0; i < stars.length; i++){
    stars[i] = new Star();
  }
}

public void draw(){
  background(0);
  player.show();
  player.move();
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
