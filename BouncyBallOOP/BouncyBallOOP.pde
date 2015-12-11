int count = 200;
Ball [] balls = new Ball[count];

Ball B;                //declare a new ball called b
Ball C;                //create new ball called C

void setup() {
  size(800,600);
  B = new Ball(100);      //initialize b as a new object of the Ball class
  C = new Ball(300);
  for (int i = 0; i < count; i++){
    balls[i] = new Ball(40);
  }
}

void draw() {
  background(0);
  B.bounce();         //call b's display() method
  C.wrap();
  balls[i].bounce();
}