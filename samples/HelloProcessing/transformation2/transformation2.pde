void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  stroke(0);
  translate(width/2, height/2);
  line(0, 0, 100, 100);
  
  
  rotate(radians(45));
  stroke(255, 0, 0);

  line(0, 0, 100, 100); //exact same coordinate !
}

