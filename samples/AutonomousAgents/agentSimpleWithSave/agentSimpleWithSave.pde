import processing.pdf.*;
import java.util.Calendar;

boolean isRecording = false;

int agentsCount = 100;
ArrayList<Agent> agents;

void reset() {
  background(255);

  agents = new ArrayList();
  for (int i = 0; i < agentsCount; i++) {
    Agent agent = new Agent();
    agents.add(agent);

    agent.noiseScale = 100;
    agent.noiseStrength = 10; 
    agent.stepDuration = 100;
  }

  for (Agent agent : agents) {
    agent.setup();
  }
}

void setup() {
  background(255);
  size(1280, 800);
  reset();
}

void draw() {
  for (Agent agent : agents) {
    agent.draw();
  }
}

void keyPressed() {
  if (key == 'c') {
    reset();
  }
}

void keyReleased() {  
  if (key == 's' || key == 'S') saveFrame(timestamp()+"_####.png");
  if (key == 'p' || key == 'P') {
    if (!isRecording) {
      isRecording = true;
      reset();
      beginRecord(PDF, timestamp()+".pdf");
    } else {
      endRecord();
      isRecording = false;
    }
  }
}

String timestamp() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

