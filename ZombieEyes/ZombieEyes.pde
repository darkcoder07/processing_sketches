

void setup() {
  
PImage face = loadImage("images.jpg");
size (708,1000);
image (face,0,0);
  
  
  
  
  
  
  
  
}
void draw() {
fill (mouseX/3,mouseY/4,mouseX/3);  
ellipse (249,417,66,35); 
fill (mouseX/3,mouseY/4,mouseX/3);
ellipse (550,421,66,35);  
  
if (mousePressed) {

println(mouseX,mouseY);  
} 
fill (0,0,0);
ellipse (235+mouseX/100,410+mouseY/100,20,10);
fill (0,0,0);
ellipse (540+mouseX/100,416+mouseY/100,20,10);
  
  
  
  
  
  
  
  
  
} 

