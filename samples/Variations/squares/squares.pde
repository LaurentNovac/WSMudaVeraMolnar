int row = 25;
int col = 25;

void setup() {
  size(600, 600);
  noLoop();
}

void drawCell(float x, float y, float w, float h) {
  stroke(0);
  rect(x, y, w, h);
}

void draw() {
  background(255);
  randomSeed(42);
  float localW = width / float(col);
  float localH = height / float(row);

  for (int i = 0; i < col; i++) {
    for (int j = 0; j < row; j++) {
      float x = (i * localW);
      float y = (j * localH);

      drawCell(x, y, localW, localH);
    }
  }
}

