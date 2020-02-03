public void setup()
{
 
size(1200,1200);
background(0); 
}
public void draw()
{
  textSize(50);
 text("S I E R P I N S K I  T R I A N G L E",250,150);
sier(130,500,500);
sier(850,500,500);
sierpinski(350,200,1000);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  int a =0;
  if(len<=20){
triangle(x,y,x+len/2,y+len,x+len,y);

  }
else
{
 len=len/2;
  noFill();
  stroke(len,len,200,len);
  sierpinski(x,y,len);
  x+=len/2;
  stroke(200,len,200,len);
  sierpinski(x,y,len);
  x-=len/4;
  y+=len/2;
  stroke(250,250,250,10);
  sierpinski(x,y,len);
}
}
public void sier(int x1, int y1, int len1) 
{
  if(len1<=70){
triangle(x1,y1,x1+len1/2,y1-len1,x1+len1,y1);

  }
else
{
  len1=len1/2;
  noFill();
  stroke(len1,len1,200,len1);
  sier(x1,y1,len1);
  x1+=len1/2;
  stroke(200,len1,200,len1);
  sier(x1,y1,len1);
  x1-=len1/4;
  y1+=len1/2;
  stroke(250,250,250,10);
  sier(x1,y1,len1);
}
}
