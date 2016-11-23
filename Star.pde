class Star{
  int x;
  int y;
  int speed;
  int col;  
  
  Star(int x, int y, int speed){
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.col = 255/(4-speed);
  }
  
  void update(){
    if (x <= 0){
      x = width;
      y = (int)random(0,height);
    }else{
      x -= speed;
    }    
  }
  
  void draw(){    
    fill(this.col);
    ellipse(x,y,3,3);
  }
}