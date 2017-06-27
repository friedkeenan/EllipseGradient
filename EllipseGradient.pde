/*
import gifAnimation.*; // You need this library: https://github.com/01010101/GifAnimation
GifMaker gif; // Uncomment these lines, 22-35, and 62-78 to enable making gifs with a right click
boolean makeGif;
boolean startGif;
boolean canStop;
*/
Color col;
PVector ellipse;
float step=1;
float x;
boolean xUp;
void newEllipse(){
  background(0);
  col=new Color(random(256),random(256),random(256));//,random(256));
  ellipse=new PVector(floor(random(width/4,width/2)),ceil(random(height/4,height/2)));
  x=ellipse.x;
}
void mousePressed(){
  if(mouseButton==LEFT)
    newEllipse();
  /*
  else{
    if(!makeGif){
      gif=new GifMaker(this,"thing.gif");
      gif.setDelay(int(1000/frameRate));
    }else{
      startGif=false;
      makeGif=false;
      canStop=false;
      gif.finish();
    }
    makeGif=!makeGif;
  }
  */
}
void setup(){
  size(600,600);
  background(0);
  newEllipse();
}
void draw(){
  translate(width/2,height/2);
  float y=(x/ellipse.x)*ellipse.y;
  for(float i=-x;i<=x;i+=step){
    float topY=sqrt(pow(y,2)*(1-pow(i,2)/pow(x,2)));
    stroke(col.col);
    col.changeColor(random(64));
    line(i,topY,i,-topY);
  }
  if(xUp){
    if(x<ellipse.x)
      x++;
    else
      xUp=false;
  }else{
    if(x>0)
      x--;
    else
      xUp=true;
  }
  /*
  if(x<=ellipse.x/2)
    canStop=true;
  if(makeGif&&x==ellipse.x){
    if(startGif&&canStop){
      startGif=false;
      makeGif=false;
      canStop=false;
      gif.finish();
    }else{
      startGif=true;
      canStop=false;
    }
  }
  if(startGif)
    gif.addFrame();
  */
}