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
     int sum, roll, myX, myY;
      Die(int x, int y)
      {
          myX = x;
          myY = y;
          sum = 0;
          roll = 0;
      }
      void roll()
      {
         roll = 0;
      }
      void show()
      {

          for(int x = 20; x <= 500; x+=100)
            {
              for(int y = 20; y <= 500; y+=100)
              {
               fill((int)(Math.random()*255)+200, (int)(Math.random()*255)+100,(int)(Math.random()*255)+100);
               rect(x,y,60,60);
               int roll = (int)(Math.random()*6)+1;
               if(roll == 1)
               {
                 ellipse(x+30,y+30,5,5);
                 sum++;
               }
               if(roll == 2)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+45,y+45,5,5);
                 sum+=2;
               }
               if(roll == 3)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+30,y+30,5,5);
                 ellipse(x+45,y+45,5,5);
                 sum+=3;
               }
               if(roll == 4)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+15,y+45,5,5);
                 ellipse(x+45,y+15,5,5);
                 ellipse(x+45,y+45,5,5);
                 sum+=4;
               }
               if(roll == 5)
               {
                 ellipse(x+15,y+15,5,5);
                 ellipse(x+45,y+15,5,5);
                 ellipse(x+45,y+45,5,5);
                 ellipse(x+30,y+30,5,5);
                 ellipse(x+15,y+45,5,5);
                 sum+=5;
               }
               if(roll == 6)
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
