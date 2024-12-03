class LaserLine {
  float startX, y; // Start position and y-coordinate of the laser line
  int lineColor; // Color of the laser line
  boolean isActive; // Whether the laser is active or not

  LaserLine(float startX, float y, int lineColor) {
    this.startX = startX; // Start position matches the LaserMachine's x
    this.y = y; // y-coordinate aligns with LaserMachine's y
    this.lineColor = lineColor;
    this.isActive = false; // Lasers start inactive
  }

  // Toggle the laser's active state
  void toggle() {
    isActive = !isActive;
  }

  void display() {
    if (isActive) {
      fill(lineColor);
      noStroke();
      rect(startX, y - 5, width - startX, 10); // Draw the laser from the machine across the screen
    }
  }
}
