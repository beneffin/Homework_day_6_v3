float xup, yup, sizes;
//the idea was inspired by http://www.openprocessing.org/sketch/377203
 
void setup() {
  size(600, 600);
  background(60);
  sizes = height/6;     //size
  //stroke(15);   // ?
}
 
void draw() {
  fill(random(255),random(255),random(255));//40
  rect(0, 0, width, height);
 
  translate(width/2, height/2);  // position of the wave
  xup += 0.01;              //speed add 0.01
  yup += 0.01;
  float yup2 = yup; 
  for (float y = -sizes; y <= sizes; y += 3) {
    yup2 += 0.01;
    float xup2 = xup;
    for (float x = -sizes; x <= sizes; x += 3) {   //+= means add
      xup2 += 0.02;
      drawSquare(x, y, noise(xup2, yup2));
    }
  }
}
 
void drawSquare(float x, float y, float noiseFactor) {   //noisefactor*
  stroke(0, 0);
  if (noiseFactor * 150 > 255)   fill(random(255),random(255),random(255));
  //if (noiseFactor * 150 > 255) fill();
  else fill(noiseFactor * 450);
  rect(x * noiseFactor * 4, y * noiseFactor * 4, 5, 5);
  //ellipse(x * noiseFactor * 4, x * noiseFactor * 2, 50, 50);
}