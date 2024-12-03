String gameState = "playing";   //Track the game state (playing or gameOver)
Player player;  //Instance of the player class
GameArea startArea;  //Start area at the bottom
GameArea endArea;  //End area at the top
ArrayList<LaserMachine> laserMachines;  //List to manage laser machine

void setup(){
  size(800, 800);  //Set screen size
  
  //Player initial position at the bottom of the screen
  player = new Player(new PVector(width / 2, height -50));  
  
  //Define start and end areas
  startArea = new GameArea(0, height - 100, width, 100, color(50, 150, 50));  //Green at the bottom
  endArea = new GameArea(0, 0, width, 100, color(150, 50, 50));  //Red at the bottom
  
  //Initialize laser machine list
  laserMachines = new ArrayList<LaserMachine>();
  //Add laser machines at pre-defined positions
  laserMachines.add(new LaserMachine(0, 100));
  laserMachines.add(new LaserMachine(0, 300));
  laserMachines.add(new LaserMachine(0, 500));
  laserMachines.add(new LaserMachine(0, 700));
  laserMachines.add(new LaserMachine(800, 200));
  laserMachines.add(new LaserMachine(800, 400));
  laserMachines.add(new LaserMachine(800, 600));
}

void draw(){
  background(0);  //Background color black
  
  //Draw start and end areas
  startArea.display();
  endArea.display();
  
  //Check player state
  if (gameState.equals("playing")){  //Updated and display the player which the game is "playing" state
     player.update();
     player.display();
  } else if (gameState.equals("gameOver")){  //Display "Game Over" when the game is "gameOver" state
    textAlign(CENTER, CENTER);  //Center-align the text
    textSize(32);  //Font size
    fill(255, 0, 0);  //Fill text to red
    text("Game Over! Press R to restart", width / 2, height / 2);  //Message display in the center of the screen
  }
  
  //Display laser machines
  for (int i = 0; i <laserMachines.size(); i++){
    laserMachines.get(i).display();
  }
  
}

void keyPressed(){
  //Check of the game is in the "gameOver" state and the 'R' key is pressed
  if (gameState.equals("gameOver") && key == 'r'){
    gameState = "playing";  //Switch back to "playing" state
    player.reset();  //Reset player position
  }
}
