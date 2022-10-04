class Mover
{
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration1 = new PVector(0,0);
  PVector acceleration2 = new PVector(0,0);
  float max_speed = random(1,5);
  float max_acc = random(0.1,0.3);
  boolean live = true;
  float dist = 0; //distance from the mouse cursor
  
  Mover()
  {
    this.location.x = random(width);
    this.location.y = random(height);
  }
  
  void update() 
  {
    if(live)
    {
      PVector mouse = new PVector(mouseX,mouseY);
      PVector dir = PVector.sub(mouse,location);
      dist = dir.mag();

      dir.normalize();
      dir.mult(max_acc); //limit of acceleration
      acceleration1=dir; //chasing the mouse
    
      acceleration2 = PVector.random2D(); //crawling
      if(dist < 600)
      {
        acceleration1 = acceleration2.lerp(acceleration1,1.0-(dist/600.0));
        acceleration1.mult(-1.0);
        velocity.add(acceleration1);
      }
      else
      {
        velocity.add(acceleration2);
      }
    
      velocity.limit(max_speed); //limit of speed
      location.add(velocity);
    }
  }
  
  void bite(int x, int y)
  {
    if(live)
    {
      if(dist < 200) 
      {
       this.live = false;
       living = living -1;
       //println(living);
      }
    }
    
  }
  
  void check()
  {
    if(live)
    {
      if(location.x < 0) location.x = width;
      if(location.x > width) location.x = 0;
      if(location.y < 0) location.y = height;
      if(location.y > height) location.y = 0;
    }  
  }
 
  void display() 
  {
   if(live)
   {
    colorMode(HSB,width+height,100,100);
    fill(dist,100,100);
    noStroke();
    circle(location.x,location.y,16); 
   }
  }
}
