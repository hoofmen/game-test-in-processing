class Ship{
  PImage image;
  int x;
  int y;
  int speed;
  
  Ship(String image_url,int x, int y, int speed){
    image = loadImage(image_url);
    this.x = x;
    this.y = y;
    this.speed = speed;
  }
  
  //direction -1 LEFT
  //direction +1 RIGHT
  void updateX(int direction){
    this.x += speed * direction;
  }
  
  //direction -1 UP
  //direction +1 DOWN
  void updateY(int direction){
    this.y += speed * direction;
  }
  
  void draw(){
    image(image, x, y);
  }
}