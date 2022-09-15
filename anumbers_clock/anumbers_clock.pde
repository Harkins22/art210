float a = 0;
PFont myFont;

void setup()
{
  size(800,600);
  myFont = createFont("Georgia", 25
  );
  textFont(myFont);
  textAlign(CENTER, CENTER);
  text("12", width/2, height/2);
}

void draw()
{
  String[] numbers = {"XII","I","II","III","IIII","V","VI","VII","VIII","IX","X","XI"};
  String[] anumbers = {"12","1","2","3","4","5","6","7","8","9","10","11"};
  translate(width/2,height/2);
  fill(255);
  strokeWeight(15);
  circle(0,0,height-100);
  for(int i = 0; i < 12; i++)
  {
  pushMatrix();
   rotate(radians(i*30));
   translate(0,-215);
   rotate(radians(-i*30));
   fill(9);
   //circle(0,0,15);
   textSize(40);
   textAlign(CENTER,CENTER);
   text(anumbers[i], 0, 0);
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
