PImage creeper;
int x = (int)random(1000);
int y = (int)random(626);
int cwidth = 10;
int cheight = 10;
int score = 3;

void setup() {
size (1000,626);  
PImage minecraft = loadImage("images.jpg");  
minecraft.resize(1000,626);
background (minecraft);
creeper=loadImage("search.jpg");
creeper.resize(cwidth,cheight);
 for (int i=0; i<5; i++) {
   x=(int)random(1000);
y=(int)random(626);

image (creeper,x,y);

}
}

void draw() {

  
if (mousePressed) {
if (isNear(mouseX,x)==true&&isNear(mouseY,y)==true) {
fill (0,255,0);
ellipse (x,y,10,10);  
  
}

else {
fill (255,0,0);  
ellipse (mouseX,mouseY,10,10); 
score--;
}
}



if (score==0) {
println("You lose! :P"); 
  
}
}

boolean isNear(int x, int y) {
if (abs(x - y) < 10)
return true;
return false;
  
  
  
}
