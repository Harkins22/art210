float a = 0;

void setup()
{
  size(800,600);
}

void draw()
{
  translate(width/2,height/2);
  strokeWeight(15);
  circle(0,0,height-100);
  for(int i = 0; i < 12; i++)
  {
  pushMatrix();
   rotate(radians(i*30));
   translate((height-150)/2,0);
   circle(0,0,15);
   popMatrix();
  }
  pushMatrix();
 rotate(radians(a));
 line(0,0,0,-((height/2)-100));
 a = a + 1;
 popMatrix();
 pushMatrix();
  rotate(radians(a/12.0));
 line(0,0,0,-((height/2)-200));
 a = a + 1;
 popMatrix();
}
   
    
  
