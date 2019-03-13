class Sun extends GameObject
{
  
Sun(float m, float x, float y, float g)
{
  this.m = m;
  this.pos = new PVector(x,y);
  this.g = g;
  acceleration = new PVector(0,0);
  velocity = new PVector(0,(2 * PI * pos.x) / T);   
}
  
void update(float delta_t)
{
  planetForce(bigSun);
  velocity.add(PVector.mult(acceleration, delta_t));
  pos.add(PVector.mult(velocity, delta_t));
}

//For adding each planet force to the sun TODO

void display()
{
  push();
  fill(#FC2121);
  stroke(255);
  ellipse(pos.x,pos.y, m/5,m/5);
  pop();
}

}
