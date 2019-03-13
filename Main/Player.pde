class Player extends GameObject
{
  float sumFx, sumFy;
  PVector steer;
  float limit;

Player ()
{
  pos = new PVector(width/2 + 1, height/2 );
  velocity = new PVector(0, 0);
  acceleration = new PVector(0, 0);
  limit = 0.1;
  m = 10;
}
void targetMouse(PVector target) 
{
    PVector desired = PVector.sub(target, pos).normalize();
    desired.mult(4);
   
    steer = PVector.sub(desired, velocity);
    steer.limit(limit);
    
    acceleration.add(steer);
}
  
void update()
  {
   if(mousePressed)
    targetMouse(mouse());
    
   velocity.add(acceleration);
   pos.add(velocity);
}
  
void mousePressed()
{
   targetMouse(mouse());
}

void display()
{
  fill(#FC2121);
  rect(pos.x - 10, pos.y - 10, 20, 20);
}

}
