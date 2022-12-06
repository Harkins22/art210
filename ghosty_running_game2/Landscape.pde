class Clouds extends Sprite
{
  Clouds()
  {
    super();
    this.velocity.x = -8;
    this.location.y = (height*.1)-this.boxy;
  
  }
  
  void check()
  {
    if(this.location.x <= -this.boxx-(width/2.0))
    {
      this.location.x = (width/2.0)+random(10,4000);  //random Cloud position
      this.location.y = (height*.1)-200;             //Cloud height
      this.currentAni = floor(random(0,this.nAni));
      this.boxx = this.ani[currentAni].frames[0].width;   //Cloud size changes by he animation frame
      this.boxy = this.ani[currentAni].frames[0].height;
      this.ani[currentAni].w = this.boxx;
      this.ani[currentAni].h = this.boxy;
      this.reg.x = this.boxx/2;
      this.reg.y = this.boxy/2;
    }
  
  }
}
    
