 
 //declare bacteria variables here   
 Bacteria [] bobs = new Bacteria[600];
 void setup()   
 {     
   //initialize bacteria variables here  
   size(500,500);
   for(int i = 0; i < bobs.length; i++){
     bobs[i] = new Bacteria(); //creates a new object from the class 300 times 
 
   }
 }   
 void draw()   
 {    
   background(0);
   fill(255,255,0);
   ellipse(mouseX,mouseY,30,30);
   fill(0);
   ellipse(mouseX-5,mouseY-5,5,5);
   ellipse(mouseX+5,mouseY-5,5,5);
   line(mouseX-6,mouseY+3,mouseX,mouseY+6);
   line(mouseX,mouseY+6,mouseX+6,mouseY+3);
   fill(255,178,214);
   ellipse(mouseX-8,mouseY+2,5,5);
   ellipse(mouseX+8,mouseY+2,5,5);
   
   //move and show the bacteria   
   for(int i = 0; i < bobs.length; i++){
     bobs[i].move();
     bobs[i].show();
   }
   if(mousePressed){
    for(int i = 0; i < bobs.length; i++){
     bobs[i] = new Bacteria(); //creates a new object from the class 300 times 
     }
   }
 }  
 class Bacteria    
 {     
   //3 member variables
   int myX, myY, myColor;
   //constructor:
   Bacteria(){
     myColor = color(((int)(Math.random()*255)+1),((int)(Math.random()*255)+1),((int)(Math.random()*255)+1));
     //color not 0 bc don't want it black
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
   }
   //2 more member functions:
   void move(){
     if(mouseX > myX)
       myX = myX + (int)(Math.random()*5)-1;
     else
       myX = myX + (int)(Math.random()*5)-3;
       
       
        if(mouseY > myY)//something with mouseY
       myY = myY + (int)(Math.random()*5)-1;
     else
       myY = myY + (int)(Math.random()*5)-3;
       
   }
   
   void show(){
     fill(myColor);
     ellipse(myX,myY,10,10);
   }
   
 
 } 
