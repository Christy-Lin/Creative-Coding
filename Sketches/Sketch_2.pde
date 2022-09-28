int x = 50;
int y = 50;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);
  myStamp();
}

void myStamp() {
  noFill();
  stroke(255);
  rect(x, y, 50, 50);
  rect(x-25, y-25, 50, 50);
  rect(x-25, y-25, 75, 75);
  fill(255);
  rect(x-25, y+25, 25, 25);
  rect(x+25, y-25, 25, 25);
}
