class Btn{

  float cenX;
  float cenY;
  float sizH;
  float sizW;
  int radi;
  int clr;
  String descTx = "";

  Btn(float cenY, float cenX, float sizH, float sizW, int radi){
    
    this.cenX = cenX;
    this.cenY = cenY;
    this.sizH = sizH;
    this.sizW = sizW;
    this.radi = radi;
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

  void setPos(float y, float x){
    cenY = y;
    cenX = x;
  }

  void setDesc(String desc){
    descTx = desc;
  }

  boolean chckOver(){
    return (
      cenX-sizW/2<= mouseX && mouseX <= cenX+sizW/2 &&
      cenY-sizH/2 <= mouseY && mouseY <= cenY+sizH/2
    );
  }
}
