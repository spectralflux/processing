// Circle doodle.

void setup() { 
  size(640,640);
  noLoop();
}

void draw() {
  background(0);
  float r = 0.0;

  for(int i = 0; i < 255; i++) {
    stroke(i,255-i,255-i);
    float theta = (i/255.0)*TWO_PI;
    line(320,320, getX(320,r,theta),getY(320,r,theta));
    r += 1.1;
  }
  
  save("spiral1.png");
}

float getX(float cx, float r, float theta) {
   return cx + r * cos(theta); 
}

float getY(float cy, float r, float theta) {
   return cy + r * sin(theta); 
}
