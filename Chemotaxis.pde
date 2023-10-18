

Food [] yummy;
Walker [] group;
void setup()
{
  fill (0,179,255);
  size(500,500);
  group = new Walker [70];
  for(int i=0; i<group.length;i++)
  {
   group[i] = new Walker();
  }
 // bob = new Walker();
 yummy = new Food [70];
 for (int i =0; i<yummy.length;i++)
 {
   yummy[i]= new Food();
 }
}
void draw()
{
  background(0);  
 // bob.show();
//  bob.walk();
for (int i = 0; i<yummy.length;i++)
{
  yummy[i].show();
  if (dist(yummy[i].foodX,yummy[i].foodY,group[i].myX,group[i].myY)< 50){
  yummy[i].foodColor = color (0,0,0);
  group[i].mySize = group[i].mySize + 1;
  }

}
  for (int i=0; i<group.length;i++)
  {
   group[i].inflate();
   group[i].walk();
   group[i].show();
}

}

class Walker
{
  int myX, myY,myColor, mySize;
  Walker()
  {
    myColor = color (255,0,0);
    myX = myY = 250;
    mySize = (int)(Math.random()*5)+5;
  }
  void walk()
  {
   if (mouseX > myX){
   myX = myX + (int)(Math.random()*5)-1;
   } else {
   myX = myX + (int)(Math.random()*5)-3;}
    if (mouseY > myY){
   myY = myY + (int)(Math.random()*5)-1;
   } else {
   myY= myY+ (int)(Math.random()*5)-3;}
    //myX = myX + (int)(Math.random()*7)-3;
  // myY = myY + (int)(Math.random()*5)-2;
  }
  void inflate()
  {
   // mySize = mySize + 1;
  }
  void show()
  {
    fill(myColor);
    ellipse(myX, myY, mySize,mySize);
  }
}
class Food
{
  int foodSize, foodColor, foodX, foodY;
  Food()
  {
    foodSize = 20;
    foodColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    foodX = (int)(Math.random()*500);
    foodY = (int)(Math.random()*500);
  }
  void show()
  {
    fill(foodColor);
    ellipse (foodX, foodY, foodSize, foodSize);
  }
}
