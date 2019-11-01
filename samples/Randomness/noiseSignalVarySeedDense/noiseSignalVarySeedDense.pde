int seed = 0;

void setup() {
  size(800, 600);
  smooth();
  textSize(32);
}

void draw() {
  background(255); 
  fill(0, 102, 153);
  text("seed: " +seed, 10, 30); 

  //axis
  stroke(0);
  line(0, height/2, width, height/2);
  line(width/2, 0, width/2, height);

  translate(0, height/2);
  noiseSeed(seed);

  float prevX = 0;
  float prevY = 0;  
  int noiseXRange = mouseX/10;

  for (int x = 0; x < width; x+=10) {
    float xPos = map(x, 0, width, 0, noiseXRange);
    float y = noise(xPos);      
    y = map(y, 0, 1, -100, 100);
    stroke(0, 0, 255);
    ellipse(x, y, 2, 2);
    stroke(255, 0, 0);
    line(prevX, prevY, x, y);
    prevX = x;
    prevY = y;
  }
}

void keyPressed() {
  if (key == 'n') {
    seed++;
  }
}

