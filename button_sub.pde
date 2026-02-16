class StartBtn extends Btn{

  StartBtn(float cenY, float cenX, float sizH, float sizW, int radi){

    super(cenY, cenX, sizH, sizW, radi);
  }

  void working(){

    if(super.chckOver()){
       
    }
  } 
}

class ModeBtn extends Btn{

  ModeBtn(float cenY, float cenX, float sizH, float sizW, int radi){

    super(cenY, cenX, sizH, sizW, radi);
  }
}

class BgBtn extends Btn{

  BgBtn(float cenY, float cenX, float sizH, float sizW, int radi){

    super(cenY, cenX, sizH, sizW, radi);
  }
}

class TtlBtn extends Btn{

  TtlBtn(float cenY, float cenX, float sizH, float sizW, int radi){

    super(cenY, cenX, sizH, sizW, radi);
  }
}

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
