int row = 25;
int col = 25;

void setup() {
  size(400, 600);
  noLoop();
}

void drawCell(float x, float y, float w, float h) {
  stroke(0);

  int rndIndex = floor(random(0, 4));
  int rndIndex2 = floor(random(0, 4));
  while (rndIndex == rndIndex2) {
    rndIndex2 = floor(random(0, 4));
  }

  if (rndIndex != 0 && rndIndex2 != 0) {
    line(x, y, x+w, y);
  } 

  if (rndIndex != 1 && rndIndex2 != 1) {
    line(x+w, y, x+w, y+h);
  } 

  if (rndIndex != 2 && rndIndex2 != 2) {
    line(x, y+h, x+w, y+h);
  } 

  if (rndIndex != 3 && rndIndex2 != 3) {
    line(x, y, x, y+h);
  }
}

void draw() {
  background(255);
  randomSeed(42);
  float localW = (width/float(col));
  float localH = (height/float(row));

  for (int i = 0; i < col; i++) {
    for (int j = 0; j < row; j++) {
      float x = (i * localW);
      float y = (j * localH);

      drawCell(x, y, localW, localH);
    }
  }
}

