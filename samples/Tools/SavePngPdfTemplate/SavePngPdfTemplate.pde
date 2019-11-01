import processing.pdf.*;
import java.util.Calendar;

boolean savePDF = false;

void setup() {
  size(800, 600);
}

void draw() {
  if (savePDF) {
    beginRecord(PDF, timestamp()+".pdf");
  }

  //put your drawing code here !!
  background(0);
  stroke(255);
  ellipse(mouseX, mouseY, 200,200);


  if (savePDF) {
    savePDF = false;
    endRecord();
  }
}

void keyReleased() {  
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_####.png");
  if (key == 'p' || key == 'P') savePDF = true;
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

