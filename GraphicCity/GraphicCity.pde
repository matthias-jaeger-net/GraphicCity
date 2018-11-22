void setup() {
  // Set a square canvas
  size(800, 800, P3D);
  
  lights();

  // Clear background 
  background(255);
  
  noStroke();
  
  // Left plane of the clipping volume
  float left = - width / 2; 
  // Right plane of the clipping volume
  float right = width / 2; 
  // Bottom plane of the clipping volume
  float bottom = -height/2;
  // Top plane of the clipping volume
  float top = height / 2;
 
  // Set camera mode to ortho    
  //ortho(left, right, bottom, top); 

  // Translate to the center  
  translate(width/2, height/2);

  // Architectural look rotation
  // TODO doesnt work well
  //rotateX(degrees(45));
  //rotateZ(degrees(-45));

  // Set the density of the grid
  float dens = 50;

  // Drawing the city with a grid of box() for now
  for (float i = left; i < right; i += dens) {
    for (float j = bottom; j < top; j += dens) {
      // Calculate the positions
      float x = i;
      float y = j;
      // Translate to the position
      pushMatrix();
      translate(x, y);
      // Weighted random house
      float w = random(70);
      float l = random(50);
      float h = random(90);
      box(w, l, h);
      popMatrix();
    }
  }
  

  // Save output
  save("jpg/city.jpg");

  // Finished program
  exit();
}
