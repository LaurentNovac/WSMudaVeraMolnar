class Agent {
  float x = 0;
  float y = 0;

  float oldX = 0;
  float oldY = 0;

  float angle;
  
  float noiseScale = 100;
  float noiseStrength = 10; 
  int stepDuration = 1000;

  int prevTime = 0;
  int time = 0;
  int firstTime = 0;
  boolean first = true;
  
  void setup() {
    x = random(width);
    y = random(height);

    oldX = x;
    oldY = y;
    angle = noise(x/noiseScale, y/noiseScale) * noiseStrength;
  }

  boolean isOutside() {
    if (x < 0) return true;
    else if (x > width)  return true;
    else if (y < 0)  return true;
    else if (y > height)  return true;
    return false;
  }

  void draw() {
    time = getTime();

    int whereInLoop = time - prevTime;

    float stepSize = map(whereInLoop, 0, stepDuration, 0, 10);
    x += cos(angle) * stepSize;
    y += sin(angle) * stepSize;

    line(oldX, oldY, x, y);

    if (whereInLoop > stepDuration) {
      prevTime = time;
      //should be updated only if we go to target
      oldX = x;
      oldY = y;
      angle = noise(x/noiseScale, y/noiseScale) * noiseStrength;
    }

    if (isOutside()) {
      x = random(width);
      y = random(height);
      oldX = x;
      oldY = y;
    }
  }

  int getTime() {
    int t = 0;
    //hack to have the time starts at 0
    if (first) {
      first = false;
      firstTime = millis();
    }
    t = millis() - firstTime;
    return t;
  }
}

