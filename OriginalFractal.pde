public void setup()
{
  size(1000,1000);
}
public void draw()
{
  fractal(0,0,1000,255,255,255);
}
public void fractal(int x, int y, int len, int col1, int col2, int col3) 
{
  if (len<20){
    fill(col1,col2,col3);
    rect(x,y,x+len,y+len);
  }
  else
  {
    fill(col1,col2,col3);
    fractal(x,y,len/2,col1,col2,col3);
    fractal(x+len/2,y,len/2,col1/2,col2,col3);
    fractal(x,y+len/2,len/2,col1,col2/2,col3);
    fractal(x+len/2,y+len/2,len/10,col1,col2,col3/2);
  }
}
