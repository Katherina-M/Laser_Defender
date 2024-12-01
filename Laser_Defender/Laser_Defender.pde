String gameState = "playing";   //Track the game state (playing or gameOver)
Player player;  //Instance of the player class

void setup(){
  size(800, 800);  //Set screen size
  player = new Player(new PVector(width / 2, height / 2));  //Player initial position at the center of the screen
}

void draw(){
  background(0);  //Background color black
  
  if (gameState.equals("playing")){  //Updated and display the player which the game is "playing" state
     player.update();
     player.display();
  } else if (gameState.equals("gameOver")){  //Display "Game Over" when the game is "gameOver" state
    textAlign(CENTER, CENTER);  //Center-align the text
    textSize(32);  //Font size
    fill(255, 0, 0);  //Fill text to red
    text("Game Over! Press R to restart", width / 2, height / 2);  //Message display in the center of the screen
  }
}

void keyPressed(){
  //Check of the game is in the "gameOver" state and the 'R' key is pressed
  if (gameState.equals("gameOver") && key == 'r'){
    gameState = "playing";  //Switch back to "playing" state
    player.reset();  //Reset player position
  }
}
