class Color{
  color col;
  float red,green,blue,alpha=255;
  boolean redUp=random(100)<50;
  boolean blueUp=random(100)<50;
  boolean greenUp=random(100)<50;
  boolean alphaUp=random(100)<50;
  Color(float red_,float green_,float blue_){
    red=red_;
    green=green_;
    blue=blue_;
    col=color(red,green,blue);
  }
  Color(float red_,float green_,float blue_,float alpha_){
    red=red_;
    green=green_;
    blue=blue_;
    alpha=alpha_;
    col=color(red,green,blue);
  }
    void changeColor(float s){
    if(red(col)==255)
      redUp=false;
    if(red(col)==0)
      redUp=true;
    if(green(col)==255)
      greenUp=false;
    if(green(col)==0)
      greenUp=true;
    if(blue(col)==255)
      blueUp=false;
    if(blue(col)==0)
      blueUp=true;
    if(redUp)
      red+=s;
    else
      red-=s;
    if(greenUp)
      green+=s;
    else
      green-=s;
    if(blueUp)
      blue+=s;
    else
      blue-=s;
    col=color(red,green,blue,alpha);
  }
  void changeColor(float s,boolean doAlpha){
    if(red(col)==255)
      redUp=false;
    if(red(col)==0)
      redUp=true;
    if(green(col)==255)
      greenUp=false;
    if(green(col)==0)
      greenUp=true;
    if(blue(col)==255)
      blueUp=false;
    if(blue(col)==0)
      blueUp=true;
    if(redUp)
      red+=s;
    else
      red-=s;
    if(greenUp)
      green+=s;
    else
      green-=s;
    if(blueUp)
      blue+=s;
    else
      blue-=s;
    if(doAlpha){
      if(alphaUp)
        alpha+=s;
      else
        alpha-=s;
    }
    col=color(red,green,blue,alpha);
  }
}