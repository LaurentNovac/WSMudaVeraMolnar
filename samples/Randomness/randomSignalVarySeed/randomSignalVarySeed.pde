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
  translate(0, height/2);
  randomSeed(seed);

  float prevX = 0;
  float prevY = 0;  

  for (int x = 10; x < width; x+=10) {
    float y = random(-200, 200);      

    stroke(0, 0, 255);
    ellipse(x, y, 10, 10);
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

