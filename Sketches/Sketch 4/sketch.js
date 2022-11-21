let sunset_scene;
let forest_scene;
let aurora_scene;

let sunset;
let forest;
let count;
let count2;

let x = [];
let y = [];

function preload() {
  sunset = loadImage('Sunset_Mist_Desert.png');
  forest = loadImage('Forest.png')
  aurora = loadImage('Aurora.jpg')
}

function setup() {
  createCanvas(1280, 720);
  background(0);
  noStroke();

  for (let i = 0; i <= width; i += 5) {
    x.push(i);
  }
  for (let j = 0; j < height; j += 5) {
    y.push(j)
  }
  
  sunset_scene = true;
  forest_scene = false;
  aurora_scene = false;

  count = 2;
  count2 = 50;
}

function draw() {
  if (count == 2) {
    image(sunset, 0, 0, width, height);
  }
  if (sunset_scene) {
    draw_sunset();
  }
  if (forest_scene) {
    draw_forest();
  }
  if (count2 == 2) {
    image(forest, 0, 0, width, height);
  }
  if (aurora_scene) {
    draw_aurora();
  }
}

function draw_sunset() {  // Pixelate Sunset Image
  sunset.loadPixels();
  for (let j = 0; j < height; j += count) {
    for (let i = 0; i < width; i += count) {
      let pixel = (i + (j * sunset.width)) * 4;
      r = sunset.pixels[pixel];
      g = sunset.pixels[pixel + 1];
      b = sunset.pixels[pixel + 2];
      
      fill(r, g, b);
      circle(i, j, count);
    }
  }
}

function draw_forest() {  // Depixelate Forest Image
  forest.loadPixels();
  for (let j = 0; j < height; j += count2) {
    for (let i = 0; i < width; i += count2) {
      let pixel = (i + (j * forest.width)) * 4;
      r = forest.pixels[pixel];
      g = forest.pixels[pixel + 1];
      b = forest.pixels[pixel + 2];

      fill(r, g, b);
      square(i, j, count2);
    }
  }
}

function draw_aurora() {  // Draw Aurora Image Using 5x5 Pixels
  aurora.loadPixels();
  for (let pixels = 0; pixels <= 75; pixels += 1) {
    let i = int(random(0, 384));
    let j = int(random(0, 144));
  
    let pixel = (x[i] + (y[j] * width)) * 4;
    let r = aurora.pixels[pixel];
    let g = aurora.pixels[pixel + 1];
    let b = aurora.pixels[pixel + 2];
    fill(r, g, b);
    square(x[i], y[j], 5);  
  }
}

function keyPressed() {
  if (count < 50) { // Sunset Scene
    count += 2;
  }
  if (count >= 50) {  // Forest Scene
    sunset_scene = false;
    forest_scene = true;
    count2 -= 2;
  }
  if (count2 <= 0) {  // Aurora Scene
    forest_scene = false;
    aurora_scene = true;
  }
}