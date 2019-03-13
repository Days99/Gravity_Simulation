class Planet extends GameObject
{
Planet(float m, float R, float y)
{
  this.m = m;
  g = 1;
  pos = new PVector(R, y);
  acceleration = new PVector(0,0);
  velocity = new PVector(0,(2 * PI * pos.x) / T);
}

void update(float delta_t)
{
  planetForce(sun);   
  velocity.add(PVector.mult(acceleration, delta_t));
  pos.add(PVector.mult(velocity, delta_t));  
}


void display()
{
  stroke(255);
  ellipse(pos.x,pos.y, 5,5);
}
  
}
