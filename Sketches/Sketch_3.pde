// Christy Lin
// Sketch 3

float stroke_r_one = 255;
float stroke_g_one = 255;
float stroke_b_one = 255;
float fill_r_one = 255;
float fill_g_one = 171;
float fill_b_one = 150;
boolean fill_green_bool_one = true;
boolean fill_blue_bool_one = true;

float stroke_r_two = 255;
float stroke_g_two = 255;
float stroke_b_two = 255;
float fill_r_two = 17;
float fill_g_two = 153;
float fill_b_two = 173;
boolean fill_red_bool_two = true;
boolean fill_green_bool_two = true;
boolean fill_blue_bool_two = true;

float stroke_r_four = 0;
float stroke_g_four = 0;
float stroke_b_four = 0;
float fill_r_four = 241;
float fill_g_four = 111;
float fill_b_four= 111;
boolean r_bool_four = false;
boolean g_bool_four = false;
boolean b_bool_four = true;

float rotation_one = 1;
float rotation_two = 1;
float rotation_three = 1;
float rotation_four = 1;

int option = 1;

void setup() {
  size(800, 800);
  background(0);
  println("Press 1-4 to select different brush options. Press 'r' to reset the brush to its default colors. Press 't' to reset rotation. Press space bar to clear the canvas.");
}

void draw() {
  if (mousePressed) {
    if (option == 1) {
      brush_one(stroke_r_one, stroke_g_one, stroke_b_one, fill_r_one, fill_g_one, fill_b_one, rotation_one);
      // Color shifts between peach, red, hot pink and orange
      if (fill_green_bool_one == true) {
        fill_g_one -= 1;
        if (fill_g_one <= 15) {
          fill_green_bool_one = false;
        }
      } else {
        fill_g_one += 1;
        if (fill_g_one >= 171) {
          fill_green_bool_one = true;
        }
      }

      if (fill_blue_bool_one == true) {
        fill_b_one -= 1;
        if (fill_b_one <= 71) {
          fill_blue_bool_one = false;
        }
      } else {
        fill_b_one += 1;
        if (fill_b_one >= 150) {
          fill_blue_bool_one = true;
        }
      }

      rotation_one += 1;
    } else if (option == 2) {
      brush_two(stroke_r_two, stroke_g_two, stroke_b_two, fill_r_two, fill_g_two, fill_b_two, rotation_two);
      // Color shifts between different shades of blues and greens
      if (fill_red_bool_two == true) {
        fill_r_two += 1;
        if (fill_r_two >= 115) {
          fill_red_bool_two = false;
        }
      } else {
        fill_r_two -= 1;
        if (fill_r_two <= 17) {
          fill_red_bool_two = true;
        }
      }

      if (fill_green_bool_two == true) {
        fill_g_two += 1;
        if (fill_g_two >= 201) {
          fill_green_bool_two = false;
        }
      } else {
        fill_g_two -= 1;
        if (fill_g_two <= 153) {
          fill_green_bool_two = true;
        }
      }

      if (fill_blue_bool_two == true) {
        fill_b_two -= 1;
        if (fill_b_two <= 50) {
          fill_blue_bool_two = false;
        }
      } else {
        fill_b_two += 1;
        if (fill_b_two >= 173) {
          fill_blue_bool_two = true;
        }
      }

      rotation_two += 2;
    } else if (option == 3) {
      brush_three(0, 0, 0, 0, 0, 0, rotation_three);
      rotation_three += 3;
    } else if (option == 4) {
      brush_four(fill_r_four, fill_g_four, fill_b_four, stroke_r_four, stroke_g_four, stroke_b_four, rotation_four);

      if (b_bool_four == true && fill_r_four == 241) {
        fill_b_four += 1;
        if (fill_b_four >= 241) {
          b_bool_four = false;
          r_bool_four = true;
        }
      }

      if (r_bool_four == true && fill_g_four == 111) {
        fill_r_four -= 1;
        if (fill_r_four <= 111) {
          r_bool_four = false;
          g_bool_four = true;
        }
      }

      if (g_bool_four == true && fill_b_four == 241) {
        fill_g_four += 1;
        if (fill_g_four >= 241) {
          g_bool_four = false;
          b_bool_four = true;
        }
      }

      if (b_bool_four == true && fill_r_four == 111) {
        fill_b_four -= 1;
        if (fill_b_four <= 111) {
          b_bool_four = false;
          r_bool_four = true;
        }
      }


      if (r_bool_four == true && fill_g_four == 241) {
        fill_r_four += 1;
        if (fill_r_four >= 241) {
          r_bool_four = false;
          g_bool_four = true;
        }
      }

      if (g_bool_four == true && fill_b_four == 111) {
        fill_g_four -= 1;
        if (fill_g_four <= 111) {
          g_bool_four = false;
          b_bool_four = true;
        }
      }

      rotation_four += 3;
    }
  }
}

void keyPressed() {
  if (key == 32) {
    background(0);
  }
  if (key == '1') {
    option = 1;
    println("Brush One");
  }

  if (key == '2') {
    option = 2;
    println("Brush Two");
  }
  if (key == '3') {
    option = 3;
    println("Brush Three");
  }
  if (key == '4') {
    option = 4;
    println("Brush Four");
  }
  if (key == 'r') { // reset brush colors
    stroke_r_one = 255;
    stroke_g_one = 255;
    stroke_b_one = 255;
    fill_r_one = 255;
    fill_g_one = 171;
    fill_b_one = 150;
    fill_green_bool_one = true;
    fill_blue_bool_one = true;

    stroke_r_two = 255;
    stroke_g_two = 255;
    stroke_b_two = 255;
    fill_r_two = 17;
    fill_g_two = 153;
    fill_b_two = 173;
    fill_red_bool_two = true;
    fill_green_bool_two = true;
    fill_blue_bool_two = true;

    stroke_r_four = 0;
    stroke_g_four = 0;
    stroke_b_four = 0;
    fill_r_four = 241;
    fill_g_four = 111;
    fill_b_four= 111;
    r_bool_four = false;
    g_bool_four = false;
    b_bool_four = true;
  }

  if (key == 't') {  // reset rotations can be used to freeze brush and draw without it rotating
    rotation_one = 1;
    rotation_two = 1;
    rotation_three = 1;
    rotation_four = 1;
  }
}

void brush_one(float stroke_r_one, float stroke_g_one, float stroke_b_one, float fill_r_one, float fill_g_one, float fill_b_one, float rotation_one) {
  pushMatrix();
  //scale(0.5);
  translate(mouseX, mouseY);
  rotate(radians(rotation_one));
  stamp(stroke_r_one, stroke_g_one, stroke_b_one, fill_r_one, fill_g_one, fill_b_one);
  popMatrix();
}

void brush_two(float stroke_r_two, float stroke_g_two, float stroke_b_two, float fill_r_two, float fill_g_two, float fill_b_two, float rotation_two) {
  pushMatrix();
  translate(mouseX, mouseY);
  scale(0.5);
  rotate(radians(rotation_two));
  for (int i = 0; i < 300; i += 50) {
    for (int j = 0; j < 300; j += 50) {
      rotate(4);
      myStamp(i, j, stroke_r_two, stroke_g_two, stroke_b_two, fill_r_two, fill_g_two, fill_b_two);
    }
  }
  popMatrix();
}

// As you draw, there's 3 other stamps that draws in a line that seems to circle where the mouse draws. The stamps seems to be "turning"
void brush_three(float stroke_r, float stroke_g, float stroke_b, float fill_r, float fill_g, float fill_b, float rotation_three) {
  pushMatrix();
  translate(mouseX, mouseY);
  scale(0.25);
  rotate(radians(rotation_three));
  for (int i = 0; i < 500; i += 25) {
    if (i % 125 == 0) {
      // Northern light colors
      if (i == 0) {
        myStamp(i, 0, 2, 44, 104, 2, 44, 104);
      } else if (i == 125) {
        myStamp(i, 0, 2, 130, 149, 2, 130, 149);
      } else if (i == 250) {
        myStamp(i, 0, 0, 167, 161, 0, 167, 161);
      } else {
        myStamp(i, 0, 42, 253, 209, 42, 253, 209);
      }
      rotate(1);
    }
  }
  popMatrix();
}

// Simple no fill stamp with color that ranges throughout the color spectrum
void brush_four(float stroke_r_four, float stroke_g_four, float stroke_b_four, float fill_r_four, float fill_g_four, float fill_b_four, float rotation_four) {
  pushMatrix();
  translate(mouseX, mouseY);
  rotate(radians(rotation_four));
  myStamp(0, 0, stroke_r_four, stroke_g_four, stroke_b_four, fill_r_four, fill_g_four, fill_b_four);
  popMatrix();
}


void stamp(float stroke_r, float stroke_g, float stroke_b, float fill_r, float fill_g, float fill_b) {
  for (int i = 0; i < 300; i += 50) {
    for (int j = 0; j < 300; j += 50) {
      rotate(1);
      myStamp(i, j, stroke_r, stroke_g, stroke_b, fill_r, fill_g, fill_b);
    }
  }
}
void myStamp(float x, float y, float stroke_r, float stroke_g, float stroke_b, float fill_r, float fill_g, float fill_b) {
  if (option == 1 || option == 2 || option == 3) {
    noFill();
    stroke(stroke_r, stroke_g, stroke_b);
    rect(x, y, 100, 100);
    rect(x, y, 75, 75);
    rect(x+25, y+25, 75, 75);
    fill(fill_r, fill_g, fill_b);
    rect(x, y+75, 25, 25);
    rect(x+75, y, 25, 25);
  } else {
    noFill();
    stroke(stroke_r, stroke_g, stroke_b);
    rect(x, y, 100, 100);
    rect(x, y, 75, 75);
    rect(x+25, y+25, 75, 75);
    rect(x, y+75, 25, 25);
    rect(x+75, y, 25, 25);
  }
}
