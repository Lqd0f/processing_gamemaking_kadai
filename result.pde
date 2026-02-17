class Result{

  String mess;
  int messClr;
  int bgClr;
  PImage icon;

  Result(){}

  void setTx(String str){
    mess = str; 
  }

  void setTxCo(int clr){
    messClr = clr;
  }

  void setBgCo(int clr){
    bgClr = clr;
  }

  void setIcon(PImage icon){
    this.icon = icon;
  }

  void disp(){
    fill(bgClr);
    rect(WIN_W/13*6.5, WIN_H/13*6.5, WIN_W/13*8, WIN_H/13*2);
    textSize(RESULT_SIZE);
    fill(messClr);
    text(mess, WIN_W/13*6.5, WIN_H/13*6.5); 
  }
}
