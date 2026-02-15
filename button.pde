class Btn{

  float cenX;
  float cenY;
  float sizH;
  float sizW;
  int radi;
  int nowClr;
  int dfltClr;
  int hoverClr;
  String descTx = "";

  Btn(){
    cenX = 0;
  }
  
  Btn(float cenY, float cenX, float sizH, float sizW, int radi){
    
    this.cenX = cenX;
    this.cenY = cenY;
    this.sizH = sizH;
    this.sizW = sizW;
    this.radi = radi;
  }

  void disp(){
    fill(nowClr);
    rect(cenX, cenY, sizW, sizH, radi);
    fill(c.whi);
    textSize(24);
    text(descTx, cenX, cenY);
  }

  void dsap(){
    cenX = -1000;
    cenY = -1000;
    disp();
  }

  void setCo(int dflt, int hover){
    dfltClr = dflt;
    hoverClr = hover;
  }

  void setPos(float y, float x){
    cenY = y;
    cenX = x;
  }

  void setDesc(String desc){
    descTx = desc;
  }

  boolean chckOver(){
    boolean rtrn = (cenX-sizW/2<= mouseX && mouseX <= cenX+sizW/2 &&
                    cenY-sizH/2 <= mouseY && mouseY <= cenY+sizH/2);
    if(rtrn){nowClr = hoverClr;}
    else{nowClr = dfltClr;}
    disp();
    return rtrn;
  }
}

void mousePressed(){

  if(startBtn.chckOver()){
    mode = 1;
  }

  if(bgBtn.chckOver()){
    bg ^= -1;
  }

  if(titleBtn.chckOver()){
    titleBtn.dsap();
    modeBtn.setPos(WIN_H/12*6, WIN_W/12*2);
    bgBtn.setPos(WIN_H/12*9, WIN_W/12*2);

    done = GAME_ROUND;
  }
}
