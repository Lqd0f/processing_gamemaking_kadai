class Game{

  int numOfRound;

  Game(int round){
    numOfRound = round; 
  }
  
  boolean run(){
    background(blk);
    bgBtn.setPos(WIN_H/12*11, WIN_W/12*3);
    bgBtn.disp();
    modeBtn.setPos(WIN_H/12*11, WIN_W/12*9);
    modeBtn.disp();
    titleBtn.setPos(WIN_H/12*11, WIN_W/12*6);
    titleBtn.disp();
    
    for(int loop = 0;loop < numOfRound;loop++){
      if(titleBtn.chckOver()){
        modeBtn.setCo(#FFFFAC);
        if(mousePressed){
          break; 
        }
      }else{
        modeBtn.setCo(#ACAC00);
      }

      bgBtn.disp();
      titleBtn.disp();
      modeBtn.disp();
    }  
    bgBtn.dsap();
    modeBtn.dsap();
    titleBtn.dsap();
    return true;
  }
}
