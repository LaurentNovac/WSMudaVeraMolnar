void setup() {
  size(512, 512);
}

void draw() {
  background(0);

  float xRange = mouseX/10;
  float yRange = mouseY/10;

  noiseSeed(42);
  loadPixels();

  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      float xNoisePos = map(x, 0, width, 0, xRange);
      float yNoisePos = map(y, 0, height, 0, yRange);


      float randomValue = noise(xNoisePos, yNoisePos)*255;
      pixels[x+y*width] = color(randomValue);

    }
  }
  updatePixels();
}








