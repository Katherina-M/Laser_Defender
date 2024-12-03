class LaserLine {
  float x, y;  //Position of the laser line
  boolean isActive;  //Whether the laser is active
  int activationTime;  //Time until the laser is activated
  
  //Set laser line
  LaserLine(float x, float y){
    this.x = x;
    this.y = y;
    isActive = false;
    // Random delay before activation, control by milliseconds
    activationTime = millis() + int(random(2000, 2000));
  }
  
  void update(){
    //Activate the laser if the current time exceeds the activation time
    if (!isActive && millis() > activationTime){
      isActive = true;
      activationTime = millis() + int(random(2000, 5000));  //Set the next activation time
    } else if (isActive && millis() > activationTime){}{
      isActive = false;  //Deactivate the laser after a short durantion
    }
  }
  
  void display(){
    if (isActive){
      stroke(255, 0, 0); // Red laser color
      strokeWeight(5);
      line(x, y, x, height); // Vertical laser spanning the height
    }
  }
}
