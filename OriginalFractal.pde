int x, y;
int recursions = 3;
int bs = 500;

void setup() {
  size(800, 800);
  frameRate(10);
}

void draw() {
  //BACKGROUND
  background(0, 22, 44);
  //END BACKGROUND
  
  //KEYBOARD
  if(keyPressed == true && keyCode == UP) {
    bs += 30;
  } else if (keyPressed == true && keyCode == DOWN) {
    bs -= 30;
  } 
  
  if(keyPressed == true && (key == 'w' || key == 'W') && recursions < 20) {
    recursions++;
  } else if(keyPressed == true && (key == 's' || key == 'S') && recursions > 2) {
    recursions--;
  }
  //END KEYBOARD
 
 //DRAW FRACTAL
  ellipse(400, 400, size, size);
  strokeWeight(3);
  stroke(220);
  fill(0, 255, 204, 50);
  fractal(recursions);
  //END DRAW FRACTAL
}

void fractal(int n) {
  x = bs / n;
  if(n <= 1) {
    ellipse(400, 400, x, x);
  } else {
    y = x / 2;
    ellipse(400 - y, 400, x, x);
    ellipse(400 + y, 400, x, x);
    ellipse(400, 400 - y, x, x);
    ellipse(400, 400 + y, x, x);
    fractal(n - 1);
  }
}
