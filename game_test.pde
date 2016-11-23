Ship ship;
Star[] stars;

void setup(){
  size(640,480);
  
  ship = new Ship("ship.png",width/3, height/3, 4);
 
  stars = new Star[255];
  Star star = null;
  //255 stars in the size of the screen
  for (int i=0; i< 255; i++){
    star = new Star((int)random(0,640), (int)random(0,480), (int)random(1,4));
    stars[i] = star;
  }
}

void draw(){
  background(0);  
    
  for (int i=0; i<stars.length; i++){
    stars[i].update();
    stars[i].draw();
  }
  
  if (keyPressed){
    if (keyCode == UP){
      ship.updateY(-1);
    }
    if(keyCode == DOWN){
      ship.updateY(1);
    }
    if(keyCode == LEFT){
      ship.updateX(-1);
    }
    if(keyCode == RIGHT){
      ship.updateX(1);
    } 
  }
  ship.draw();
}