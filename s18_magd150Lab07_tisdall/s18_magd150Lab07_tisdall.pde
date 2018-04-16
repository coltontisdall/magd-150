PImage bg;

Ball[] balls = new Ball[25];

void setup(){
  size(748, 468);
  bg = loadImage("nature.jpg");
  
  for(int i = 0; i<balls.length; i++){
    balls[i] = new Ball(int(random(50,400)), int(random(50,400)), int(random(5)), int(random(5)),int(random(10,100)));
  }
}

void draw() {
  background(155);
  image(bg,0,0, width, height);
    for(int i = 0; i<balls.length; i++){
      balls[i].display();
      balls[i].update();
}
}