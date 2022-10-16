boolean left = true;
boolean right = false;
boolean left2 = false;
boolean right2 = true;
boolean left3 = false;
boolean right3 = true;
int x = 0;
int x2 = 1550;
int x3 = 800;

int options = 1;

void setup() {
  size(800, 800);
}

void draw() {
  background(0);

  if (options == 1) {  // Grid with different colors
    for (int i = 0; i < 800; i += 100) {
      for (int j = 0; j < 800; j += 100) {
        float stroke_r = random(0, 255);
        float stroke_g = random(0, 255);
        float stroke_b = random(0, 255);
        float fill_r = random(0, 255);
        float fill_g = random(0, 255);
        float fill_b = random(0, 255);

        myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
      }
    }
  }
  if (options == 2) {  // Column of red to blue stamps (design could be used for city buildings)
    scale(0.5);
    float stroke_r = 255;
    float stroke_g = 255;
    float stroke_b = 255;
    float fill_r = 255;
    float fill_g = 0;
    float fill_b = 0;
    for (int i = 50; i < 1400; i += 100) {
      for (int j = 50; j < 1400; j += 25) {
        if (i % 75 == 0) {
          stroke_r -= 2;
          stroke_g -= 1;
          fill_r -= 2;
          fill_g += 1;
          fill_b += 1;
          println(fill_r, fill_g, fill_b);
          //rotate(1);
          myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
        }
      }
    }
  }

  if (options == 3) { // Was going for a inception type of look where there's more stamps the more you look
    background(255);
    float stroke_r = 0;
    float stroke_g = 0;
    float stroke_b = 0;
    float fill_r = 0;
    float fill_g = 0;
    float fill_b = 0;
    for (int i = 50; i < 800; i += 200) {
      myStamp(i, 50, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
    }

    for (int i = 50; i < 800; i += 200) {
      if (i != 250 && i != 450) {
        myStamp(i, 250, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
      }
    }

    for (int i = 50; i < 800; i += 200) {
      if (i != 250 && i != 450) {
        myStamp(i, 450, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
      }
    }

    for (int i = 50; i < 800; i += 200) {
      myStamp(i, 650, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
    }

    scale(0.5);

    for (int i = 50; i < 1600; i += 200) {
      for (int j = 50; j < 1600; j += 200) {
        myStamp(i, j, 123, 255, 212, 0, 94, 255);
      }
    }

    scale(7);
    rotate(0.79);
    myStamp(109, -53, 0, 0, 0, 0, 0, 0);

    scale(0.45);

    rotate(-0.79);

    scale(0.31);
    for (int i = 155; i < 1386; i += 820) {
      myStamp(i, 155, 255, 30, 68, 255, 30, 68);
    }
    for (int i = 565; i < 1386; i += 820) {
      myStamp(1385, i, 255, 30, 68, 255, 30, 68);
    }
    for (int i = 155; i < 1386; i += 820) {
      myStamp(155, i, 255, 30, 68, 255, 30, 68);
    }
    for (int i = 565; i < 1386; i += 820) {
      myStamp(i, 1385, 255, 30, 68, 255, 30, 68);
    }

    scale(0.25);

    int x = 0;
    int y = 0;
    while (x != 6500 && y != 6500) {
      myStamp(x, y, 0, 0, 0, 0, 0, 0);
      x += 100;
      y += 100;
    }

    int x2 = 6400;
    int y2 = 0;
    while (x2 != 0 && y2 != 6500) {
      myStamp(x2, y2, 0, 0, 0, 0, 0, 0);
      x2 -= 100;
      y2 += 100;
    }

    for (int i  = 6400; i > 0; i -= 100) {
      if (i % 7 == 0) {
        myStamp(0, i, 0, 0, 0, 68, 130, 192);
      }
    }
    for (int i  = 6400; i > 0; i -= 100) {
      if (i % 7 == 0) {
        myStamp(6450, i, 0, 0, 0, 68, 130, 192);
      }
    }
    for (int i  = 6400; i > 0; i -= 100) {
      if (i % 7 == 0) {
        myStamp(i, 0, 0, 0, 0, 68, 130, 192);
      }
    }

    for (int i  = 6400; i > 0; i -= 100) {
      if (i % 7 == 0) {
        myStamp(i, 6450, 0, 0, 0, 68, 130, 192);
      }
    }
  }

  if (options == 4) {  // Windmill looking pattern
    background(0);
    float stroke_r = 255;
    float stroke_g = 255;
    float stroke_b = 255;
    float fill_r = 120;
    float fill_g = 45;
    float fill_b = 0;

    rotate(radians(-45.0));
    for (int i = 200; i < 1000; i += 20) {
      if (i % 50 == 0) {
        myStamp(50, i, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
        fill_r -= 5;
      }
    }

    fill_r = 120;
    for (int i = 120; i < 1000; i += 20) {
      if (i % 50 == 0) {
        myStamp(-150, i, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
        fill_r -= 5;
      }
    }

    for (int i = 60; i < 1000; i += 20) {
      myStamp(-50, i, 120, 45, 0, 80, 45, 0);
    }

    rotate(radians(90));
    stroke_r = 255;
    stroke_g = 255;
    stroke_b = 255;
    fill_r = 120;
    fill_g = 45;
    fill_b = 0;
    for (int i = -400; i < 400; i += 20) {
      if (i % 50 == 0) {
        myStamp(400, i, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
        fill_r -= 5;
      }
    }

    fill_r = 120;
    for (int i = -400; i < 400; i += 20) {
      if (i % 50 == 0) {
        myStamp(600, i, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
        fill_r -= 5;
      }
    }

    for (int i = -500; i < 420; i += 20) {
      myStamp(500, i, 120, 45, 0, 80, 45, 0);
    }
  }

  if (options == 5) {  // Floating stamps. Was trying to go for depth perception type of look where some seems further or closer from the viewer
    background(0);

    rotate(270);
    scale(0.25);

    float stroke_r = 255;
    float stroke_g = 255;
    float stroke_b = 255;
    float fill_r = 255;
    float fill_g = 0;
    float fill_b = 0;

    for (int i = 0; i < 2000; i += 200) {
      for (int j = 0; j < 4000; j+= 50) {
        if (i % 25 == 0) {
          fill_r -= 0.5;
          fill_g += 0.5;
          fill_b += 0.5;
          rotate(2);
          myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
          //pattern += 1;
        }
      }
    }

    scale(2);

    stroke_r = 255;
    stroke_g = 255;
    stroke_b = 255;
    fill_r = 255;
    fill_g = 150;
    fill_b = 150;
    for (int i = 400; i < 2000; i += 100) {
      for (int j = 400; j < 4000; j+= 100) {
        rotate(3);
        myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
        fill_r -= 1;
      }
    }

    fill_r = 60;
    fill_g = 236;
    fill_b = 192;
    scale(2);
    for (int i = 0; i < 1000; i += 100) {
      for (int j = 0; j < 3000; j+= 100) {
        rotate(2);
        myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
        fill_r += 1;
      }
    }
  }
}

void myStamp(int x, int y, float stroke_r, float stroke_g, float stroke_b, float fill_r, float fill_g, float fill_b) {
  noFill();
  stroke(stroke_r, stroke_g, stroke_b);
  rect(x, y, 100, 100);
  rect(x, y, 75, 75);
  rect(x+25, y+25, 75, 75);
  fill(fill_r, fill_g, fill_b);
  rect(x, y+75, 25, 25);  // White square
  rect(x+75, y, 25, 25);  // White square
}


void keyPressed() {
  options++;
  if (options > 5) {
    options = 1;
  }
}
