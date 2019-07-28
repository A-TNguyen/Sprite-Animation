class Sprite
{

  PImage images;
  PImage trump;
  
  Sprite(String img_name)
  {   
      String filename = img_name + ".png";
      images = loadImage(filename);
      
  } 
  
  
  
  void display()
  {
    frameRate(1);
    imageMode(CENTER);
    int DIM = 6;
    int W = images.width/DIM;
    int H = images.height/4;
   
    background(255);
    int x = frameCount%DIM*W;
    int y = frameCount/DIM%DIM*H;
    //PImage trump = images.get(x,H,W,H);
    noCursor();
    //image(trump, 400,400);
    if ( key == CODED){
    
      if(keyCode == RIGHT && keyPressed == true)
    {
     
       trump = images.get(x, H , W , H);
        x += 1;
        if ( x > width - W)
          x = width - W;
       
    }
     image(trump, x, y , W, H);
    }
  }
  void background_display() // This will display background text
  {
    textAlign(CENTER);
    textSize(90);
    fill(0);
    text("Trump Run",width/2,height/2);
    
  }    
}
 
  
