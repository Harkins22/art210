float _angle = 0;

float[] size = new float[200];
float[] speed = new float[200];
color[] col = new color[200];
float[] dist = new float[200];
void setup()
{
  size(800,600);
  
  for(int i = 0; i < 20; i = i + 1)
  {
    
  size[i]=random(10,50);
  col[i]=color(random(255),random(255),random(255));
  dist[i]=random(50,300);
  speed[i]=random(-2,2);
  }
}
void draw()
{
  clearScrene();
  noStroke();
  translate (width/2, height/2);
  fill(color(255,255,255));
  circle(0,0,100);
  
  for(int i = 0; i < 20; i = i + 1)
  {
    aPlanet(size[i],col[i],speed[i],dist[i]);
  }
  

  _angle = _angle + 1;
}

void aPlanet(float size, color col, float speed,float distance)
{
  println(distance);
pushMatrix();
    rotate(radians(_angle)/speed);
    translate(distance,0);
    fill(color(col));
    circle(0,0,size);
  popMatrix();
}

void clearScrene()
{
  //partial screne clear
  noStroke();
  fill(color(0,0,0,10));
  rect(0,0,800,600);
}
