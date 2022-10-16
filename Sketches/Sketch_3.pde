// Christy Lin
// Sketch 3

void setup() {
  size(800, 800);
  background(0);
}

void draw() {
  //background(0);
  if (mousePressed) {
    paint();
  }
}

void keyPressed() {
  if (key == 32) {
    background(0);
  }
}

void paint() {
  //background(0);

  float stroke_r = 255;
  float stroke_g = 255;
  float stroke_b = 255;
  float fill_r = 255;
  float fill_g = 0;
  float fill_b = 0;

  pushMatrix();
  //scale(0.5);
  translate(mouseX, mouseY);
  stamp(stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
  popMatrix();
  if (fill_r > 0) {
    fill_r -= 1;
  }
  else {
    fill_r = 255;
  }
  //for (int i = mouseX - 100; i < mouseX + 100; i += 50) {
  //  for (int j = mouseY - 100; j < mouseY + 100; j+= 50) {
  //    if (i % 25 == 0) {
  //      fill_r -= 0.5;
  //      fill_g += 0.5;
  //      fill_b += 0.5;
  //      rotate(2);
  //      myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
  //    }
  //  }
  //}

  //  scale(2);

  //  stroke_r = 255;
  //  stroke_g = 255;
  //  stroke_b = 255;
  //  fill_r = 255;
  //  fill_g = 150;
  //  fill_b = 150;
  //  for (int i = 400; i < 2000; i += 100) {
  //    for (int j = 400; j < 4000; j+= 100) {
  //      rotate(3);
  //      myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
  //      fill_r -= 1;
  //    }
  //  }

  //  fill_r = 60;
  //  fill_g = 236;
  //  fill_b = 192;
  //  scale(2);
  //  for (int i = 0; i < 1000; i += 100) {
  //    for (int j = 0; j < 3000; j+= 100) {
  //      rotate(2);
  //      myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
  //      fill_r += 1;
  //    }
  //  }
}

void stamp(float stroke_r, float stroke_g, float stroke_b, float fill_r, float fill_g, float fill_b) {
  //rotate(2);
  for (int i = 0; i < 300; i += 100) {
    for (int j = 0; j < 300; j += 100) { 
      rotate(1);
      myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
    }
  }
}
void myStamp(float x, float y, float stroke_r, float stroke_g, float stroke_b, float fill_r, float fill_g, float fill_b) {
  noFill();
  stroke(stroke_r, stroke_g, stroke_b);
  rect(x, y, 100, 100);
  rect(x, y, 75, 75);
  rect(x+25, y+25, 75, 75);
  fill(fill_r, fill_g, fill_b);
  rect(x, y+75, 25, 25);  // White square
  rect(x+75, y, 25, 25);  // White square
  //println(x, ',' , y);
}
