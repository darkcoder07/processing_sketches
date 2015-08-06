int raindrop = 100;
int XPos = (int) random(1300);
int score = 0;
void checkCatch(int x){
 if (raindrop > mouseX && raindrop < mouseX+100)
  score++;
 else if (score>0)
 score--;
}

void setup()
{
size (1300,750);
  
  
}
void draw()
{ 
print(score);  
background (128,127,141);
fill (255,255,255);
rect (mouseX,600,105,100);
fill (64,58,146);
 ellipse (XPos,raindrop,20,35);
 raindrop +=10;
 if (raindrop>=750)
{
raindrop =100;
 XPos = (int) random(1300);

}
if (score>=12)
{

background (0,0,0);}
}
