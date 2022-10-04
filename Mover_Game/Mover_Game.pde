int nMover = 1000;
Mover[] m = new Mover[nMover];
int living = nMover;

void setup()
{
  size(800,600);
  fullScreen();
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i] = new Mover();
  }  
}

void draw()
{
  noStroke();
  fill(0,0,0,10);
  rect(0,0,width,height);
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i].update();
    m[i].check();
    m[i].display();
  } 
 hud();
  
}

void hud()
{
  translate(width/2,10);
  fill(color(0,0,100));
  textAlign(CENTER);
  text(living,0,0);
  translate(-nMover/2,0);
  rect(0,0,nMover,10);
  fill(color(living/10,100,100));
  rect(0,0,living,10);
  noFill();
  stroke(color(0,0,100));
  rect(0,0,nMover,10);
  
}

void mousePressed()
{
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i].bite(mouseX,mouseY);
  }
}
