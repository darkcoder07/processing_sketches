


void setup() 
{
  size (1000, 1000); 
  background (80, 176, 30);
}
void draw()
{
  text ("Vish",100,100);
  ellipse (200, 200, 200, 200);
  fill (170, 30, 170);
  triangle(74, 75, 30, 30, 100, 100);
  fill (52, 52, 91);
  if (mouseX > 500 && mouseY>500)

  {
    text ("ermagerd its a circle!", 500, 500);
    ellipse (500,500,200,200);
    fill (random(255),random(255),random(255));


  }
  else { 
    fill (170, 30, 170);
    background (80, 176, 30);
    ellipse (200, 200, 200, 200);
    fill (100, 100, 100);
  }
  
}

