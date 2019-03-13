abstract class GameObject
{
   PVector pos;
   PVector acceleration;
   PVector velocity;
   float m;
   PVector sumF;
   float F;
   float Fx, Fy;
   float g;

  void planetForce(GameObject sun)
{
    float planetDistance = dist(pos, sun.pos);
    float Fg = (sun.g * sun.m * m) / (planetDistance  * planetDistance );
    float a = Fg / m;
    float ax = a * (-(pos.x - sun.pos.x)/ planetDistance);
    float ay = a * (-(pos.y - sun.pos.y)/ planetDistance);    
    acceleration = new PVector(ax,ay); 
}

}
