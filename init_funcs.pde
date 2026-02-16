void initButtons(){

  startBtn = new Btn(WIN_H/13*6, WIN_W/13*2, WIN_H/13, WIN_W/13*2, 24);
  visBtn = new Btn(WIN_H/13*12, WIN_W/13*6.5, WIN_H/13, WIN_W/13*2, 24);
  bgBtn = new Btn(WIN_H/13*12, WIN_W/13*3, WIN_H/13, WIN_W/13*2, 24);
  titleBtn = new Btn(WIN_H/13*11, WIN_W/13*9, WIN_H/13, WIN_W/13*2, 24);

  koalas = new ArrayList();

  startBtn.setCo(#ACACAC, #DFDFDF);
  visBtn.setCo(#ACACAC, #DFDFDF);
  bgBtn.setCo(#ACACAC, #DFDFDF);
  titleBtn.setCo(#ACACAC, #DFDFDF);

  startBtn.setDesc("start");
  visBtn.setDesc("visual");
  bgBtn.setDesc("background");
  titleBtn.setDesc("back to title");
}

void initLoads(){

  koalaFace = loadImage("./img/koala_face.png");  
  titleLogo = loadImage("./img/greatTitleLogo.png");
  koalaSil = loadImage("./img/koala_shiruetto.png");
  allowJp = loadFont("./data/yuGothUI_sb.vlw");
}

void initVisuals(){

  visR = new Visual(WIN_H/13*6.5, WIN_W/13*5.5, #FF0000);
  visG = new Visual(WIN_H/13*6.5, WIN_W/13*6.5, #00FF00);
  visB = new Visual(WIN_H/13*6.5, WIN_W/13*7.5, #0000FF);
}

void initKoalas(){

  for(int i = 0;i < NUM_OF_KOALA;i++){
    float cenY = (WIN_H/13) * (7 * (i/(NUM_OF_KOALA/2)+1) -5);
    float cenX = (WIN_W/13) * ((3 * (i%(NUM_OF_KOALA/2)+1) )-1);
    koalas.add(new ColorfulKoala(cenY, cenX, KOALA_SIZE, KOALA_SIZE)); 
  }
}
