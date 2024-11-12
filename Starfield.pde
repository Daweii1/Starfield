particle [] boom;
public void setup() {
  size(500,500);
  boom = new particle[1000];
  
  boom[0]= new oddBall();
  for (int i =1; i  < boom.length; i++) {
    boom[i] = new particle();
}
}  

public void draw() {
  background(0);
         for(int i =0; i< boom.length; i++) {
                 boom[i].move();   
           boom[i].show();
      
    }

}

class particle 
{
  double myX,myY,speed,angle;
  int myColor;
  particle(){
    myX = 250;
    myY = 250;
    myColor = color(0 ,0,255);
    speed = (Math.random()*2*PI);
    angle = (Math.random()*2*PI);
  }
    
 
    void move(){
     myX = myX + speed*Math.cos(angle);
     myY = myY + speed*Math.sin(angle);

  }

  
   void show(){
     fill(myColor);
       rect((float)myX, (float)myY, 10,10);   
  }
  
  
  
}

class oddBall extends particle {
   oddBall() {
    myX = 250;
    myY = 100;
    myColor = color(0 ,255,205);
    speed = .5;
    angle = 270;
   }
}
