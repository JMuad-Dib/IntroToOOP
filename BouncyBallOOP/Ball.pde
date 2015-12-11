class Ball {
 //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

//this is a constructor. you can have more than one constructor for a given class
  Ball(int tDiam) {
    diam = tDiam;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(50), random(125,230), random(180,255));
    vel = PVector.random2D();
    vel.mult(42);
  }

//after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  //create constructor that makes the ball bounce
  void bounce(){
    fill(c);
    stroke(c);
    ellipse(loc.x, loc.y, diam, diam);
    loc.add(vel);
    //have the ball reverse speed whenever its edge touches the edge of the canvas
    if((loc.x - diam/2) <= 0 || (loc.x + diam/2) >= width){
      vel.x = vel.x * -1;
    }
    if((loc.y - diam/2) <= 0 || (loc.y + diam/2) >= height){
      vel.y = vel.y * -1;
    }
  }
  
  void wrap(){
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
    loc.add(vel);
    if(loc.x < 0){
      loc.x = width;
    }
    if(loc.x  > width){
      loc.x = 0;
    }
    if(loc.y< 0){
      loc.y = height;
    }
    if(loc.y > height){
      loc.y = 0;
    }
  }
}