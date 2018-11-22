void setup() {
  size(800, 800, P3D);

  background(200);

  // Camera mode and clipping plane
  // left plane of the clipping volume
  float left = - width / 2; 
  //right plane of the clipping volume
  float right = width / 2; 
  // bottom plane of the clipping volume
  float bottom = -height/2;
  // top plane of the clipping volume
  float top = height / 2;
  ortho(left, right, bottom, top); 

  // Drawing the city with a box for now
  // TODO city generation method
  //translate(width/2, height/2, 0);
  rotateX(-PI/6);
  rotateY(PI/3);

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      int x = i * 100;
      int y = j * 100;
      pushMatrix();
      translate(x, y);
      box(50);
      popMatrix();
    }
  }

  // Save output
  save("jpg/city.jpg");
  //exit();
}
