Sprite s; // This is calling the Sprite Class
void setup()
{
  size(1500,1500); // size of the border
  imageMode(CENTER);
  frameRate(24);
  s = new Sprite("trump_run");
  background(255); //Background color
  
}

void draw()
{
  s.display();
  s.background_display();
      
}
