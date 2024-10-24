 //declare bacteria variables here   
 void setup()   
 {     
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	//lots of java!   
 }    

class Bacteria {
  int x, y;
  int color;

  Bacteria(int startX, int startY, int col) {
    x = startX;
    y = startY;
    color = col;
  }

  void move() {
    float biasX = (mouseX - x) * 0.01;
    float biasY = (mouseY - y) * 0.01;

    x += (int)(Math.random() * 5 - 2 + biasX);
    y += (int)(Math.random() * 5 - 2 + biasY);

    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
  }

  void show() {
    fill(color);
    noStroke();
    ellipse(x, y, 10, 10);
  }
}

Bacteria[] colony;
int numBacteria = 100;

void setup() {
  size(800, 600);
  colony = new Bacteria[numBacteria];

  for (int i = 0; i < numBacteria; i++) {
    int startX = width / 2;
    int startY = height / 2;
    int col = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
    colony[i] = new Bacteria(startX, startY, col);
  }
}

void draw() {
  background(255);

  for (Bacteria b : colony) {
    b.move();
    b.show();
  }

  fill(0);
  textSize(16);
  textAlign(CENTER);
  text("Bacteria Simulation - Click to attract", width / 2, 20);
}
