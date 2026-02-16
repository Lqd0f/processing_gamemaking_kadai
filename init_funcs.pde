void initButtons(){

  startBtn = new Btn(WIN_H/12*3, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 24);
  modeBtn = new Btn(WIN_H/12*6, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 24);
  bgBtn = new Btn(WIN_H/12*9, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 24);
  titleBtn = new Btn(WIN_H/12*11, WIN_W/12*9, WIN_H/12, WIN_W/12*2, 24);

  koalas = new ArrayList();

  startBtn.setCo(#AC0000, #FFACAC);
  modeBtn.setCo(#00AC00, #ACFFAC);
  bgBtn.setCo(#0000AC, #ACACFF);
  titleBtn.setCo(#ACAC00, #FFFFAC);

  startBtn.setDesc("start");
  modeBtn.setDesc("visual");
  bgBtn.setDesc("background");
  titleBtn.setDesc("back to title");
}

void initLoads(){

  koalaFace = loadImage("./img/koala_face.png");  
  titleLogo = loadImage("./img/greatTitleLogo.png");
  koalaSil = loadImage("./img/koala_shiruetto.png");
  allowJp = loadFont("./data/yuGothUI_sb.vlw");
}

void initKoalas(){

  for(int i = 0;i < NUM_OF_KOALA;i++){
    float cenY = (WIN_H/12) * (4 * (i/(NUM_OF_KOALA/2)+1) );
    float cenX = (WIN_W/12) * (2 * (i%(NUM_OF_KOALA/2)+1) );
    koalas.add(new ColorfulKoala(cenY, cenX, KOALA_SIZE, KOALA_SIZE)); 
  }
}
