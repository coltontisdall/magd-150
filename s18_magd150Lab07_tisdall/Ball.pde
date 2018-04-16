class Ball {
  
  private int y,x,dy,dx,size;
  PVector position, velocity, acceleration;
  
  
  public Ball(int y, int x, int dx, int dy, int size) {
    position= new PVector( x, y);
    velocity = new PVector(dx, dy);
    acceleration = new PVector(0, 2);
    this.size = size;
  }
  
  public void update() {
    move();
    checkCollisionsWithWalls();
  }
  
  public void move(){
    position.add(velocity);
    velocity.add(acceleration);
    velocity.limit(20);
  }
  
  public void checkCollisionsWithWalls() {
    if(isCollidingWithVerticalWalls()) {
      velocity.y *= -1;
    }
    if(isCollidingWithHorizontalWalls()) { 
      velocity.x *= -1;
    }
  }
  
  public boolean isCollidingWithVerticalWalls(){
    if(position.y +(size/2) > height || position.y - (size/2) < 0) {
      return true;
    }
    return false;
  }
  
  public boolean isCollidingWithHorizontalWalls(){
    if(position.x +(size/2) > width || position.x - (size/2) < 0) {
      return true;
    }
    return false;
  }
  
  public void display() {
    ellipse(position.x, position.y, size, size);
  }
  
}