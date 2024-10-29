//declare bacteria variables here  
 Circles [] bob; //declares circle variable in global scope so can 
                  // be used for whole code
                  //Is the object of Circles           
void setup(){
      
   size (300, 300);
   background (255);
   bob = new Circles [20]; 
   for (int i = 0; i < bob.length; i++){
     bob [i] =  new Circles();  //new Circles () creates instances
   }
     
   //initialize bacteria variables here   
} 
 
 void draw(){ 
   background (0);
   
   //move and show the bacteria  
   for (int i = 0; i < bob.length; i++){
     bob [i]. move();
     bob [i]. show();
   }
 }  

 
 class Circles    
 {     
   //lots of java!
  int myX, myY, myColor;
  
  
  Circles(){ //constructor
     myX = (int)(Math.random () * 300); 
     myY= (int)(Math.random () * 300); 
     myColor = color(((int)(Math.random () * 255)), ((int)(Math.random () * 255)), ((int)(Math.random () * 255)));
   }
   
   void move(){
     
     //moves circles towards mouse for x coordinate
    if (mouseX > myX){
     myX = myX + (int)(Math.random () * 5)-1; //positive bias
   }
    else {
      myX = myX +(int)(Math.random () * 5)-3; //negative bias
    }
    
    //moves circles towards mouse for y coordinate
     if (mouseY > myY){
     myY = myY + (int)(Math.random () * 5)-1; //positive bias
   }
    else {
      myY = myY +(int)(Math.random () * 5)-3; //negative bias
    }
    
   }
   
   void show(){
     fill (myColor);
     ellipse (myX, myY, 10, 10);
     fill (255);
     ellipse (mouseX, mouseY, 25, 25); // the ball that circles follow
   }
 }  
 
