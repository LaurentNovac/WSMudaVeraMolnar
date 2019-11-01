void setup() {
  size(800, 600);
  smooth();
}

void draw() {
  background(255); 
  translate(0, height/2);
  randomSeed(42);

  float prevX = 0;
  float prevY = random(0, 1);  

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


