void setup() {
  size(500, 400);
}

void draw() {
  background(0);

  stroke(255);
  fill(128);
  ellipse(250, 200, 100, 100);

  if (mousePressed) {
    fill(255,0,0);
    rect(250, 200, 100, 100);
  }
}

