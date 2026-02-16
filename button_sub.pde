class ColorfulKoala extends Btn{

  int red;
  int grn;
  int blu;

  ColorfulKoala(float cenY, float cenX, float sizH, float sizW){
    super.cenY = cenY;
    super.cenX = cenX;
    super.sizH = sizH;
    super.sizW = sizW;
  }

  void setRGB(int red, int grn, int blu){
    this.red = red; 
    this.grn = grn; 
    this.blu = blu; 
  }

  void disp(){
    tint(red, grn, blu);
    image(koalaSil, cenX, cenY, sizH, sizW);
  }
}
