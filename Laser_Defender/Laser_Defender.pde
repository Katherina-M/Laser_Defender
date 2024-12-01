Player player;

void setup(){
  size(800, 800);
  player = new Player(new PVector(width / 2, height / 2));
}

void draw(){
  background(0);
  
  player.update();
  player.display();

  
  
}

void keyPressed(){
  player.reset();
}
