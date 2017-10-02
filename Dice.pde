int count = 0;
void setup()
{
  noLoop();
  size(700,700);
}
void draw()
{
  //your code here
  
  for (int y = 10; y <= 600; y= y +50)
  {
    for (int x= 10; x<= 600; x= x +50)
    {
      Die bob = new Die(x,y);
      bob.show();
      count = count + bob.randomRoll;
    }
    textSize(30);
    text("Total score: " + count, 200, 650);
    

  }
}
void mousePressed()
{
  redraw();
  count = 0;
}
class Die //models one single dice cube
{
  int myX, myY, randomRoll, 
  colorR, colorG, colorB, totalScore ;//variable declarations here
  Die(int x, int y) //constructor
  {
    //variable initializations here
    myX = x;
    myY= y;
    roll();
  }
  void roll()
  {
    randomRoll = (int)(Math.random()*6) +1;
  }
  void show()
  {
    //your code here
    int colorR = (int)(Math.random()*255);
    int colorG = (int)(Math.random()*255);
    int colorB = (int)(Math.random()*255);
    
    
    fill(colorR, colorG, colorB);
    rect(myX,myY,40,40, 7);
   
    
    if (randomRoll == 1){
      fill(255, 255, 255);
      ellipse(myX + 20,myY+ 20,8,8);
    }
    if (randomRoll == 2){
      fill(255, 255, 255);
      ellipse(myX +10, myY + 10, 8,8);
      ellipse(myX + 30, myY +30,8,8);
    }
    if (randomRoll == 3){
      fill(255, 255, 255);
      ellipse(myX +10, myY + 10, 8,8);
      ellipse(myX + 20,myY+ 20,8,8);
      ellipse(myX + 30, myY +30,8,8);
    }
    if (randomRoll == 4){
      fill(255, 255, 255);
      ellipse(myX +10, myY + 10, 8,8);
      ellipse(myX +10, myY + 30, 8,8);
      ellipse(myX +30, myY + 10, 8,8);
      ellipse(myX +30, myY + 30, 8,8);
    }
    if (randomRoll == 5){
      fill(255, 255, 255);
      ellipse(myX +10, myY + 10, 8,8);
      ellipse(myX +10, myY + 30, 8,8);
      ellipse(myX +30, myY + 10, 8,8);
      ellipse(myX +30, myY + 30, 8,8);
      ellipse(myX + 20,myY+ 20,8,8);
    }
    if (randomRoll == 6){
      fill(255, 255, 255);
      ellipse(myX +10, myY + 10, 8,8);
      ellipse(myX +10, myY + 30, 8,8);
      ellipse(myX +30, myY + 10, 8,8);
      ellipse(myX +30, myY + 30, 8,8);
      ellipse(myX +10, myY+20,8,8 );
      ellipse(myX + 30, myY +20,8,8);
    }
    
    
  }
  
  
}
