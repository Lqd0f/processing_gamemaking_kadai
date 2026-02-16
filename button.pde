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

  if(mode == 0 && startBtn.chckOver()){
    mode = 1;
  }

  if(mode == 1 && bgBtn.chckOver()){
    bg ^= 1;
  }

  if(mode == 1 && visBtn.chckOver()){
    visu ^= 1;
  }

  if(mode == 1 && titleBtn.chckOver()){
    titleBtn.dsap();
    visBtn.setPos(WIN_H/13*6, WIN_W/13*2);
    bgBtn.setPos(WIN_H/13*9, WIN_W/13*2);

    done = GAME_ROUND;
  }

  for(int i = 0;i < NUM_OF_KOALA;i++){
    if(mode == 1 && koalas.get(i).chckOver()){
      String rslt;
      if(i == correctAns){
        rslt = "Correct!";
        fill(#60CC90);
        score++;
      }else{
        rslt = "Wrong...";
        fill(#DC3036);
      }
      textSize(72);
      text(rslt, WIN_W/13*6.5, WIN_H/13*6.5);
      done++;
      waiting = false;
      break;
    }
  }
}
