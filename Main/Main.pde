float G;

static final float T = 2000;
 float TIMESCALE = 1000;
static final float FRAMERATE = 60;
float prev_t;

//Player player;
Planet[] planets = new Planet[7];
Sun sun;
Sun bigSun;
void setup()
{
  fullScreen();
  background(0);
//  player = new Player();
  bigSun = new Sun(250, 0,0, 1);
  sun = new Sun(100, 300,0, 1);
  planets = new Planet[]
  {
    new Planet(5,  sun.pos.x + 100,0),
    new Planet(15,  sun.pos.x + 97,0),
    new Planet(5,  sun.pos.x + 80,0),
    new Planet(15,  sun.pos.x + 105,0),
    new Planet(5,  sun.pos.x + 110,0),
    new Planet(1,  sun.pos.x + 60,0),
    new Planet(30,  sun.pos.x + 100,0)
  };
}

void draw()
{
  frameRate(FRAMERATE);
  //Coment for weird drawing of elipses
  background(0);
  float current_t = frameCount / FRAMERATE;
  float delta_t = (current_t - prev_t) * TIMESCALE;
  prev_t = current_t;
  translate(width/2, height/2);
  sun.update(delta_t/10);
  sun.display();
  bigSun.display();
  for (Planet planet : planets) {
       planet.update(delta_t); 
       planet.display();
    }
 
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      TIMESCALE += 1000;
    }
  }
}
