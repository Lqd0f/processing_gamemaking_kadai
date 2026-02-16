class Visual{
  float cenX;
  float cenY;
  int clr;
  int scale;

  Visual(float cenY, float cenX, int clr){
    this.cenX = cenX;  
    this.cenY = cenY;  
    this.clr = clr;
  }

  void setScale(int sz){
    scale = sz;
  }

  void disp(){
    fill(clr);
    circle(cenX, cenY, scale/3);
  }
}
