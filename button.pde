class Btn{

  float cenX;
  float lefX;
  float rigX;

  float cenY;
  float uppY;
  float dowY;

  float sizH;
  float sizW;

  int radi;

  int clr;

  Btn(float cenY, float cenX, float sizH, float sizW, int radi){
    
    this.cenX = cenX;
    this.cenY = cenY;
    this.sizH = sizH;
    this.sizW = sizW;
    this.radi = radi;

    lefX = cenX-sizW/2;
    rigX = cenX+sizW/2;
    uppY = cenY-sizH/2;
    dowY = cenY+sizH/2;
  }

  void disp(){
    fill(this.clr);
    rect(cenX, cenY, sizW, sizH, radi);
  }

  void dsap(){
    rect(-1000, -1000, 0, 0, 0);
  }

  void setCo(int hexa){
    this.clr = hexa;
  }

  void setPos(int y, int x){
    cenY = y;
    cenX = x;
  }

  boolean chckOver(){
    return (
      lefX <= mouseX && mouseX <= rigX &&
      uppY <= mouseY && mouseY <= dowY
    );
  }
}
