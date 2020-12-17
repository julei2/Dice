Die bob;
void setup()
  {
      noLoop();
      size(500,600);
      bob = new Die(100,100);
  }
void draw()
  {
      background(90,90,120);
      bob.roll();
      bob.show();
  }
void mousePressed()
  {
      redraw();
  }
class Die
  {
     int sum, dots, myX, myY;
      Die(int x, int y)
      {
          myX = x;
          myY = y;
          sum = 0;
          dots = 0;
      }
      void roll()
      {
         dots = 0;
      }
      void show()
      {

          for(int x = 20; x <= 500; x+=100)
            {
              for(int y = 20; y <= 500; y+=100)
              {
               fill((int)(Math.random()*255)+200, (int)(Math.random()*255)+100,(int)(Math.random()*255)+100);
               rect(x,y,60,60);
               int dots = (int)(Math.random()*6)+1;
               if(dots == 1)
               {
                 ellipse(x+30,y+30,5,5);
                 sum++;
               }
               if(dots == 2)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+45,y+45,5,5);
                 sum+=2;
               }
               if(dots == 3)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+30,y+30,5,5);
                 ellipse(x+45,y+45,5,5);
                 sum+=3;
               }
               if(dots == 4)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+15,y+45,5,5);
                 ellipse(x+45,y+15,5,5);
                 ellipse(x+45,y+45,5,5);
                 sum+=4;
               }
               if(dots == 5)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+45,y+15,5,5);
                 ellipse(x+45,y+45,5,5);
                 ellipse(x+30,y+30,5,5);
                 ellipse(x+15,y+45,5,5);
                 sum+=5;
               }
               if(dots == 6)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+45,y+15,5,5);
                 ellipse(x+45,y+45,5,5);
                 ellipse(x+15,y+30,5,5);
                 ellipse(x+45,y+30,5,5);
                 ellipse(x+15,y+45,5,5);
                 sum+=6;
                }
              }
        }
          fill(255);
          textSize(50);
          textAlign(CENTER);
          text("Total: " + sum, 250, 550);
          sum = 0;
      }
  }
