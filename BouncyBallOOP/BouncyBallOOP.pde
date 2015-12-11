Ball B;                //declare a new ball called b

void setup() {
  size(800,600);
  B = new Ball();      //initialize b as a new object of the Ball class
}

void draw() {
  background(0);
  B.display();         //call b's display() method
}