float G;
ArrayList<Planet> bodies;

static final float T = 2000;
 float TIMESCALE = 1000;
static final float FRAMERATE = 60;
float prev_t;

Player player;
Planet obj1;
Planet obj2;
Planet obj3;
Planet obj4;
Planet obj5;
Planet obj6;
Planet obj7;
Sun sun;
Sun bigSun;
void setup()
{
  fullScreen();
  background(0);
  bodies = new ArrayList<Planet>();
  sun = new Sun(100, 300,0, 1);
  bigSun = new Sun(250, 0,0, 1);
  obj1 = new Planet(5,  sun.pos.x + 100,0);
  obj2 = new Planet(15,  sun.pos.x + 97,0);
  obj3 = new Planet(5,  sun.pos.x + 80,0);
  obj4 = new Planet(15,  sun.pos.x + 105,0);
  obj5 = new Planet(5,  sun.pos.x + 110,0);
  obj6 = new Planet(1,  sun.pos.x + 60,0);
  obj7 = new Planet(30,  sun.pos.x + 100,0);
  bodies.add(obj1);
  bodies.add(obj2);
  bodies.add(obj3);
  bodies.add(obj4);
  bodies.add(obj5);
  bodies.add(obj6);
  bodies.add(obj7);

  player = new Player();
}

void draw()
{
  frameRate(FRAMERATE);
  background(0);
  float current_t = frameCount / FRAMERATE;
  float delta_t = (current_t - prev_t) * TIMESCALE;
  prev_t = current_t;
  translate(width/2, height/2);
  for (Planet body : bodies) {
       body.update(delta_t); 
       body.display();
    }
  sun.update(delta_t/10);
  sun.display();
  bigSun.display();
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      TIMESCALE += 1000;
    }
  }
}
      
