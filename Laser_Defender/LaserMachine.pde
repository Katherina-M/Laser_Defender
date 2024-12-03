class LaserMachine{
  float x, y;
  LaserLine laser;  //Call laser line
  
  LaserMachine(float x, float y) {
    this.x = x;
    this.y = y;
    laser = new LaserLine(x, y);  //Create a laser line at the machine's center
  }
  
  void update(){
    // Update the laser line
    laser.update();
  }
  
  void display(){
    //Fill machine with yellow
    fill(200, 200, 50);
    rect(x - 15, y - 15, 30, 30);
    
    // Display the laser line
    laser.display();
  }
}
