int agentsCount = 1000;
ArrayList<Agent> agents;

void reset(){
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

void keyPressed(){
  if(key == 'c'){
    background(255);
    reset();
  }
}
