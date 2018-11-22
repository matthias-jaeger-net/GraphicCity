void setup() {
  // Set a square canvas
  size(800, 800, P3D);

  rotateX(PI/6);

  // Clear background 
  background(255);

  // Translate to the center  
  translate(width/2, height/2);

  // Left plane of the clipping volume
  float left = - width / 2; 
  // Right plane of the clipping volume
  float right = width / 2; 
  // Bottom plane of the clipping volume
  float bottom = -height/2;
  // Top plane of the clipping volume
  float top = height / 2;

  // Set the density of the grid
  float dens = 50;

  // Drawing the city with a grid of box() for now
  for (float i = left; i < right; i += dens) {
    for (float j = bottom; j < top; j += dens) {
      // Calculate the positions
      float x = i;
      float y = j;

      // Weighted random house
      float r = random(1);
      if (r < 0.5) {
        pushMatrix();
        translate(x, y);
        float w = random(5, 70);
        float l = random(5, 50);
        float h = random(5, 90);
        box(w, l, h);
        popMatrix();
      }
    }
  }


  // Save output
  save("jpg/city.jpg");

  // Finished program
  exit();
}
