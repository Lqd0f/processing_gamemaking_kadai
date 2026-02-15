final float WIN_H = 720;
final float WIN_W = 1080;
int mode = 0; //0:title, 1:game, 2:result
final int GAME_ROUND = 1<<30;
int bg = -1; // -1:dark, 1:light
int bgDly = 0;
int score = 0;
int done = 0;
boolean runningGame = false;
boolean finGame = false;
PImage koalaFace;
PImage titleLogo;
PFont allowJp;

ColorMaster c = new ColorMaster();
Btn startBtn = new Btn(WIN_H/12*3, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 0);
Btn modeBtn = new Btn(WIN_H/12*6, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 0);
Btn bgBtn = new Btn(WIN_H/12*9, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 0);
Btn titleBtn = new Btn(WIN_H/12*11, WIN_W/12*9, WIN_H/12, WIN_W/12*2, 0);

void setup(){

  size(1080, 720);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  textSize(36);
  noStroke();
  koalaFace = loadImage("./img/koala_face.png");  
  titleLogo = loadImage("./img/greatTitleLogo.png");
  allowJp = loadFont("./data/yuGothUI_sb.vlw");
  textFont(allowJp);

  startBtn.setCo(#AC0000, #FFACAC);
  modeBtn.setCo(#00AC00, #ACFFAC);
  bgBtn.setCo(#0000AC, #ACACFF);
  titleBtn.setCo(#ACAC00, #FFFFAC);
  titleBtn.dsap();

  startBtn.setDesc("start");
  modeBtn.setDesc("shape");
  bgBtn.setDesc("background");
  titleBtn.setDesc("back to title");
}

void draw(){

  startBtn.chckOver();
  modeBtn.chckOver();
  bgBtn.chckOver();
  titleBtn.chckOver();

  if(mode == 0){
    titleScreen();
  }else if(mode == 1){
    gameScreen();
    if(GAME_ROUND <= done){
      mode = 0;
      done = 0;
    }
  }
}
