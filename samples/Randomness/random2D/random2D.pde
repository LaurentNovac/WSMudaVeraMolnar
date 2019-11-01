int actRandomSeed = 0;

void setup() {
  size(512, 512);
}

void draw() {
  background(0);

  randomSeed(actRandomSeed);

  loadPixels();

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float randomValue = random(255);
      pixels[x+y*width] = color(randomValue);
    }
  }
  updatePixels();
}










