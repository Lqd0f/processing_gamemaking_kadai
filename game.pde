class Game{

  int numOfRound;

  Game(int round){
    numOfRound = round; 

  }
  
  boolean run(){
    background(blk);
    bgBtn.setPos(WIN_H/12*10, WIN_W/12*3);
    bgBtn.disp();
    modeBtn.setPos(WIN_H/12*10, WIN_W/12*9);
    modeBtn.disp();
    titleBtn.setPos(WIN_H/12*10, WIN_W/12*6);
    titleBtn.disp();
    
    for(int loop = 0;loop < numOfRound;loop++){
       
    }

    bgBtn.dsap();
    modeBtn.dsap();
    return true;
  }  
}
