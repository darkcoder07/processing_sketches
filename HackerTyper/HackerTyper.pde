//1. Create a constructor for you hackertyper to initialize your x, y, lineLength and lineSpace


class HackerType {
  int xOffset;
  int yOffset;
  int y = 0; 
  int x = 0;
  int index = 0;
  int lineLength = 2;
  int lineSpace = 30;
  int scroll = 100;
  int cursorColor = 255;
  ArrayList<String> text = new ArrayList<String>();
  ArrayList<String> hackerText = new ArrayList<String>();

/* Constructor goes here. */
 HackerType(int x, int y, int lineLength,int lineSpace) {
   this.x=x;
   this.y=y;
   this.lineLength=lineLength;
   this.lineSpace=lineSpace;
   
}

  /* (Dont change) Adds text to you HackerTyper */
  void add(String t) {
    
    hackerText.add(t);
  }

  /*(Dont change) prints out hacker text */
  void printNext() {
    text.add(hackerText.get(index%hackerText.size()));
    index++;
  }

  /*diplays the access granted popup*/
  void accessGranted() {
    //11. fill in this method to diplany an access granted method on the screen.
    fill(0,255,0);
    textSize(35);
    text("Access granted!",100,400);
  }

  /*diplays the access denied popup*/
  void accessDenied() {
    //12. fill in this method to display and access denied message on the screen.
    fill (255,0,0);
    textSize(20);
    text("Access Denied! Can't have no POLICE in here...",100,400);
  }

  /*displays the text*/
  void displayText() {
    //set the size and color of your text
    arrayStuff();
    drawCursor(xOffset, yOffset);
    yOffset=0;
  }

  /*draws cursor*/
  void drawCursor(int xOffset, int offset) {
    strokeWeight(1);

    //13. use the millis() to make your cursor blink every half second

    stroke(0, cursorColor, 0);
    line(x+xOffset, y+offset+5, x+xOffset, y+offset-18);
  }

  /*(Dont change) This does array stuff*/
  void arrayStuff() {
    yOffset = 0;
    xOffset = 0; 
    for (String str : text) {
      if (text.indexOf(str)%lineLength==0) {
        yOffset+=lineSpace;
        xOffset=0;
      } 
      text(str, x+xOffset, y+yOffset);
      if (y+yOffset > height-50) {
        y-=scroll;
      }
      xOffset += textWidth(str);
    }
  }
}




void setup() {
  //1. set the size of your canvas // if you're using processing 3 use fullScreen()
size(800,800);
  //2. Make a new instance of Hacker Typer as a member variable

  //3. Add some hacker text to your hackerTyper (Make it look hackerish!)
  hack.add("Downloading totallysafeprogram.exe......destroying personal files.....downloading bankinfogetter.exe....");

hack.add("Destroying all meme files...(this is a good hack");
hack.add("Connecting computer to worldwidebnet323242373283231###()().net.....using bots to launch nuclear missiles because why not....");
}
HackerType hack = new HackerType(150,400,2,10);
void draw() {
  //4. set the background of your screen
  
background(random(255),random(255),random(255));
  // 5. call the display text method
hack.displayText();


  //9. if the key counter variable is greater than 50 call the accesss denied method.
if (keyCounter>50) {

  hack.printNext();
 hack.accessDenied(); 

}
if (keyCounter>70) {
  hack.printNext();
 hack.accessGranted();
keyCounter=0; 
}
  //10. if the key counter is greater than 70 call the accesGranted method.
}
int keyCounter = 0;

//6. create a key pressed method
void keyPressed() {
  
  hack.printNext();
  
  keyCounter=keyCounter+3;
}

//7. call the printNext method from your hacker typer in your keypressed method


//8.  make a member variable you number of keys pressed. and increment your key counter in the keyPressed method.











