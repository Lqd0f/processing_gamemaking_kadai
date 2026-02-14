final float WIN_H = 720;
final float WIN_W = 1080;
final int GAME_ROUND = 1<<30;
int bg = -1; // use like bool
int bgDly = 0;
boolean runningGame = false;
PImage koalaFace;
PImage titleLogo;
PFont allowJp;

Btn startBtn = new Btn(WIN_H/12*3, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 0);
Btn modeBtn = new Btn(WIN_H/12*6, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 0);
Btn bgBtn = new Btn(WIN_H/12*9, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 0);
Btn titleBtn = new Btn(-WIN_H*100, WIN_W/12*2, WIN_H/12, WIN_W/12*2, 0);
Game gameIns = new Game(GAME_ROUND);

void setup(){

  size(1080, 720);
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  noStroke();
  koalaFace = loadImage("./img/koala_face.png");  
  titleLogo = loadImage("./img/greatTitleLogo.png");
  allowJp = loadFont("./data/yuGothUI_sb.vlw");
  textFont(allowJp);

  startBtn.setCo(#AC0000);
  modeBtn.setCo(#00AC00);
  bgBtn.setCo(#0000AC);
  titleBtn.setCo(#ACAC00);
}

void draw(){

  
  if(0 < bgDly){bgDly--;}

  if(startBtn.chckOver()){
    startBtn.setCo(#FFACAC);
    if(mousePressed){
      runningGame = true; 
    }
  }else{
    startBtn.setCo(#AC0000);
  }

  if(modeBtn.chckOver()){
    modeBtn.setCo(#ACFFAC);
    if(mousePressed && bgDly == 0){
      //visualVal ^= 1;
      //bgDly = 12;
    }
  }else{
    modeBtn.setCo(#00AC00);
  }

   if(bgBtn.chckOver()){
     bgBtn.setCo(#ACACFF);
     if(mousePressed && bgDly == 0){
       bg ^= 1;
       bgDly = 12;
     }
   }else{
     bgBtn.setCo(#0000AC);
   }

  background(bg==-1? blk:whi);
  startBtn.disp();
  modeBtn.disp();
  bgBtn.disp();
  dispTtlTxt();

  if(runningGame){
    boolean safe = gameIns.run();
  }
}

void dispTtlTxt(){

  image(titleLogo
        , WIN_W/12*8
        , WIN_H/12*6
        , min(WIN_H,WIN_W)/12*10
        , min(WIN_H,WIN_W)/12*10
  );
}
