Walker[] bob;
int x =2;
int y = 5;
Walker[] virus;
void setup(){
  size(500,500);
  bob = new Walker[x];
  virus = new Walker[y];

  for(int i =0; i< bob.length;i++)
  {
    bob[i] = new Walker();
  }
  for(int i =0; i< virus.length;i++)
  {
    virus[i] = new Walker();
    
  }
  
}
void draw(){
  background(0);
  for(int i=0;i<bob.length;i++)
  {
  bob[i].show();
  bob[i].walk();
  int myColor = color(255,255,255);
  fill(myColor);

  }
  for(int i=0;i<virus.length;i++)
  {
  virus[i].show();
  virus[i].walk();
  int myColor = color(255,0,0);
  fill(myColor);
  }
}
class Walker{
  int myX,myY;
  Walker(){
    myX=myY=250;
  }
  void walk()
  {
    
    myX=myX+(int)(Math.random()*3)-1;
    myY=myY+(int)(Math.random()*3)-1;
  }
  void show()
  {
    ellipse(myX,myY,8,3);
  }
}
