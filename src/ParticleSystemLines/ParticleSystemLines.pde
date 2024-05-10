int num = 200;
Particle[] p = new Particle[num];

void setup(){
  //size(1920,1080);
  fullScreen();
  colorMode(HSB);
  for(int i = 0; i < num; i++){
    p[i] = new Particle(new PVector(random(width), random(height)), 100, 200);
  }
  stroke(255);
  background(0);
}

void draw(){
  
  
  for(int i = 0; i < num; i++){
    p[i].update(p, i);
  }
  
}

void keyPressed(){
  if(key == RIGHT){
    println("pressed");
    saveFrame("line-######.png");
  }
}
