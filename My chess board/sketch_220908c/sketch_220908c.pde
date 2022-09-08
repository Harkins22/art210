void setup()
{
  size(800,800);
  
}

void draw()
{
  background(0,0,0);
  //white tiles
  fill(color(255,255,255));
  for(float x = 0; x < 800; x = x + 200)
  {
    rect(x*(width/800),0,width/8,height/8);
  }
  for(float x = 100; x < 800; x = x + 200)
  {
    rect(x*(width/800),100,width/8,height/8);
  }
   for(float x = 0; x < 800; x = x + 200)
  {
    rect(x*(width/800),200,width/8,height/8);
  }
  for(float x = 100; x < 800; x = x + 200)
  {
    rect(x*(width/800),300,width/8,height/8);
  }
   for(float x = 0; x < 800; x = x + 200)
  {
    rect(x*(width/800),400,width/8,height/8);
  }
    for(float x = 100; x < 800; x = x + 200)
  {
    rect(x*(width/800),500,width/8,height/8);
  }
    for(float x = 0; x < 800; x = x + 200)
  {
    rect(x*(width/800),600,width/8,height/8);
  }
    for(float x = 100; x < 800; x = x + 200)
  {
    rect(x*(width/800),700,width/8,height/8);
  }
}
