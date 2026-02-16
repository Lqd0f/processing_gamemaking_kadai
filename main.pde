int mode = 0; //0:title, 1:game, 2:result
int bg = -1; // -1:dark, 1:light
int bgDly = 0;
int score = 0;
int done = 0;
boolean waiting = false;

PImage koalaFace;
PImage titleLogo;
PImage koalaSil;
PFont allowJp;

ColorMaster c;
Btn startBtn;
Btn modeBtn;
Btn bgBtn;
Btn titleBtn;
ArrayList<ColorfulKoala> koalas;

void setup(){

  size(1080, 720);
  c = new ColorMaster();
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  initLoads();
  noStroke();
  textFont(allowJp);

  initButtons();
  initKoalas();
}

void draw(){

  startBtn.chckOver();
  modeBtn.chckOver();
  bgBtn.chckOver();
  titleBtn.chckOver();

  if(mode == 0){
    titleScreen();
  }else if(mode == 1){
    if(!waiting){
      for(int i = 0;i < NUM_OF_KOALA;i++){
        int redElem = (int)random(0, 256);
        int grnElem = (int)random(0, 256);
        int bluElem = (int)random(0, 256);
        koalas.get(i).setRGB(redElem, grnElem, bluElem);
      }
      waiting = true;
    }
    gameScreen();
    if(GAME_ROUND <= done){
      mode = 0;
      done = 0;
    }
  }
}
