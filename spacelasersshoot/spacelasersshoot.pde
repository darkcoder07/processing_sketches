 SpaceShip enterprise = new SpaceShip(300,715);
 Bullet b = new Bullet(enterprise.getX(),enterprise.getY());
ArrayList<Bullet> bulletlist = new ArrayList<Bullet>(); 
  
int direction;
void setup() {
  
size (600,800);  
  
  
  
}
void draw() {
 background(0,0,30); 
 b.moveAllBullets();
 b.displayAllBullets();
if (enterprise.getX()>550) {

enterprise.setX(enterprise.getX()-2);
} 
else if (enterprise.getX()<0) {
  
 enterprise.setX(enterprise.getX()+2); 
}
 
enterprise.display();
 
 if (direction == 1) {
  enterprise.setX(enterprise.getX()+2);
 } 
 else if (direction == 2) {
 
  enterprise.setX(enterprise.getX()-2);
   
 }
}
void keyPressed() {
 if (key == CODED) {
  
  if (keyCode == RIGHT) {
  direction = 1;
  }
  if (keyCode == LEFT) {
    
    direction = 2;  
  }
  
  
   
  
  
  
 } 
 if (key == ' ') {
   Bullet b = new Bullet(enterprise.getX(),680); 
   bulletlist.add(b);
 
  } 
  
}

class SpaceShip {
  
int x;
int y;

public SpaceShip(int x, int y) {
  
  this.y=y;
 this.x=x; 
}
int getX() {
  
 return x;

}
int getY() {
  
 return y; 
}
void setX(int x) {
  
 this.x=x; 
}
void setY(int y) {
  
 this.y=y; 
}
void display() 
  {
    fill(0,255,0);
    rect(x, y,  50, 50);
}







  
  
  
}
class Bullet {
 int bx=0;
int by=0;
public Bullet(int bx, int by) {
 this.bx=bx;
this.by=by; 
  
  
  
}
void move() {
  
 by=by-2; 
}
void moveAllBullets() {
for (int i = 0; i < bulletlist.size(); i++) {
  Bullet b = bulletlist.get(i);

  b.move();
} }
void displayAllBullets() {
 for (int i = 0; i<bulletlist.size(); i++) {
   Bullet b = bulletlist.get(i);
  b.display();
 } 
  
}
  

 void display() 
  {
     stroke(255);
    point(bx,by);


}

 int getBX() {
  
  return bx;
 } 
 int getBY() {
   
  return by; 
 }
 void setBX(int BX) {
  this.bx=bx; 
 }
 void setBY(int BY) {
  this.by=by; 
   
 }
  


  
}
class Asteroid {
  
 int ax; int ay; int speed; int size;
public Asteroid (int ax, int ay, int speed,int size) {
 this.ax=ax;
 this.ay=ay;
 this.speed=speed;
 this.size=size;
 
} 
int getAY() {
  
 return ay; 
  
}
int getAX() {
  
 return ax; 
}
void setAX(int ax) {
 this.ax=ax; 
}
void setAY(int ay) {
 this.ay=ay; 
  
}
int getSpeed() {
  
 return speed; 
}
void setSize(int size) {
 this.size=size; 
}
int getSize() {
  
 return size; 
}
void setSpeed(int speed) {
 this.speed=speed;
}
 void display() 
  {
     fill(0,0,255);
    noStroke(); 
    rect(x, y, 50, size);
}

  
void move() {
  
 ay=ay-2; 
}
//void moveAllBullets() {
//for (int i = 0; i < bulletlist.size(); i++) {
 // Bullet b = bulletlist.get(i);

//  b.move();
//} }
//void displayAllBullets() {
 //for (int i = 0; i<bulletlist.size(); i++) {
 //  Bullet b = bulletlist.get(i);
 // b.display();
/// } 
  
//}  
  
}
