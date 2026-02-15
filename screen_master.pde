void titleScreen(){

  background(bg==-1? c.blk:c.whi);

  titleBtn.dsap();
  startBtn.setPos(WIN_H/12*3, WIN_W/12*2);
  modeBtn.setPos(WIN_H/12*6, WIN_W/12*2);
  bgBtn.setPos(WIN_H/12*9, WIN_W/12*2);
  startBtn.disp();
  modeBtn.disp();
  bgBtn.disp();

  dispTtlLogo(); 
}

void gameScreen(){

  startBtn.dsap();

  background(bg==-1? c.blk:c.whi);
  bgBtn.setPos(WIN_H/12*11, WIN_W/12*3);
  bgBtn.disp();
  modeBtn.setPos(WIN_H/12*11, WIN_W/12*6);
  modeBtn.disp();
  titleBtn.setPos(WIN_H/12*11, WIN_W/12*9);
  titleBtn.disp();

  background(bg==-1? c.blk:c.whi);
  bgBtn.disp();
  titleBtn.disp();
  modeBtn.disp();
}

void dispTtlLogo(){

  image(titleLogo
        , WIN_W/12*8
        , WIN_H/12*6
        , min(WIN_H,WIN_W)/12*10
        , min(WIN_H,WIN_W)/12*10
  );
}
