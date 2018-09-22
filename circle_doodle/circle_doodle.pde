// Circle doodle.

void setup() { 
  size(640,640);
  noLoop();
}

void draw() {
  background(0);
  float r = 200.0;
  float theta = 0;

  for(int i = 0; i < 255; i++) {
    stroke(i,i,i);
    line(320,320, getX(320,r,theta),getY(320,r,theta));
    theta += 0.1;
  }
}

float getX(float cx, float r, float theta) {
   return cx + r * cos(theta); 
}

float getY(float cy, float r, float theta) {
   return cy + r * sin(theta); 
}
