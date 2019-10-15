Die nou;
void setup()
{
  size(500,500);
	noLoop();

}
void draw()
{
  background(0,175,150);
  int numSquare = 0;
  for(int y = 40; y<400; y+=110)
  {
	for(int x = 40;x<400;x+=110)
	{
	nou = new Die(x,y);
	nou.show();
	nou.roll();
	numSquare = numSquare + nou.numSquare;
  }
  }
  textSize(15);
  fill(0);
  text("The total number is " + numSquare, 170, 490);
  text("This Programs Adds All Die Together ",110, 20);
}
void mousePressed()
{
	redraw();
}
class Die
{
	int numSquare,numSize, myX,myY;
	Die(int x, int y)
	{
	myX=x;
	myY=y;
	numSize = 100;
	numSquare = (int)(Math.random()*6+1);
	}
	void roll()
	{
  	fill(0,255,255);
    	stroke(175);
    	if(numSquare==1)
      	ellipse(myX + 49,myY + 49,15,15);
   	 
    	else if (numSquare == 2)
    	{
      	ellipse (myX + 24, myY + 24, 15, 15);
        	ellipse (myX + 74, myY + 74, 15, 15);
    	}
    	else if (numSquare == 3)
    	{
        	ellipse(myX + 25, myY + 25, 15, 15);
        	ellipse(myX + 50, myY + 50, 15,15);
        	ellipse(myX + 75, myY + 75, 15,15 );
    	}
    	else if (numSquare == 4)
    	{
        	ellipse (myX + 25, myY + 25, 15, 15);
        	ellipse (myX + 75, myY + 75, 15, 15);
        	ellipse (myX + 25, myY + 75, 15, 15);
        	ellipse (myX + 75, myY + 25, 15, 15);
      	}
      	else if (numSquare == 5)
      	{
        	ellipse (myX + 25, myY + 25, 15, 15);
        	ellipse (myX + 75, myY + 75, 15, 15);
        	ellipse (myX + 25, myY + 75, 15, 15);
        	ellipse (myX + 75, myY + 25, 15, 15);
        	ellipse (myX + 50, myY + 50, 15, 15);
      	}
      	else
      	{
        	ellipse(myX + 25, myY + 30, 15, 15);
        	ellipse(myX + 50, myY + 30, 15, 15);
        	ellipse(myX + 75, myY + 30, 15, 15);
        	ellipse(myX + 25, myY + 60, 15, 15);
        	ellipse(myX + 50, myY + 60, 15, 15);
        	ellipse(myX + 75, myY + 60, 15, 15);
      	}
	}
	void show()
	{
  	fill(0,0,0);
  	stroke(0);
  	rect(myX,myY,numSize,numSize,40);
	}
}
