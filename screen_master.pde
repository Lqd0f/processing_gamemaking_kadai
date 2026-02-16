void titleScreen(){

  background(bg==1? c.blk:c.whi);

  titleBtn.dsap();


  startBtn.setPos(WIN_H/13*6, WIN_W/13*2);


  startBtn.disp();

  dispTtlLogo(); 
}

void gameScreen(){

  startBtn.dsap();

  background(bg==1? c.blk:c.whi);
  bgBtn.setPos(WIN_H/13*12, WIN_W/13*3);
  bgBtn.disp();
  visBtn.setPos(WIN_H/13*12, WIN_W/13*6.5);
  visBtn.disp();
  titleBtn.setPos(WIN_H/13*12, WIN_W/13*10);
  titleBtn.disp();

  background(bg==1? c.blk:c.whi);

  for(int i = 0;i < NUM_OF_KOALA;i++){
    koalas.get(i).disp();
  }

  bgBtn.disp();
  visBtn.disp();
  titleBtn.disp();
  fill(bg==1? c.whi:c.blk);
  textSize(72);
  text(ques, WIN_W/13*6.5, WIN_H/13*5);
  if(visu == 1){
    visR.disp();
    visG.disp();
    visB.disp();
  }
}

void dispTtlLogo(){

  noTint();
  image(titleLogo
        , WIN_W/13*9
        , WIN_H/13*6.5
        , min(WIN_H,WIN_W)/13*11
        , min(WIN_H,WIN_W)/13*11
  );
}
