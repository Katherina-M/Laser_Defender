Class Player {
  PVector pos;  //Position of the player;
  float speed = 5;  //Speed of the player's movement
  
  Player(PVector startPos){
    pos = startPos.copy();  //Copy the starting position
  }
   
  //Updated the player's position
  void uodate(){
    //Check if the key pressed
    if (keyPressed){
      if(keyCode == UP) pos.y -= speed;  //Move up
      if(keyCode == DOWN) pos.y += speed;  //Move down
      if(keyCode == LEFT) pos.x -= speed;  //Move left
      if(keyCode == RIGHT) pos.x += speed;  //Move right
  }
