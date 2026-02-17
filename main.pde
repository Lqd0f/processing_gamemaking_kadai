int mode = 0;   // 0:title, 1:game, 2:result
int bg = 0;     // 0:dark, 1:light
int visu = 0;   // 0:off, 1:on
int correctAns;
int done = 0;
int rsltBgn;
int cntCorr = 0;
int cntMiss = 0;
boolean waiting = false;

PImage koalaGood;
PImage koalaOhno;
PImage titleLogo;
PImage koalaSil;
PFont allowJp;

Visual visR;
Visual visG;
Visual visB;

ColorMaster c;
Btn startBtn;
Btn visBtn;
Btn bgBtn;
Btn titleBtn;
String ques;
ArrayList<ColorfulKoala> koalas;
Result gameRslt;

void setup(){

  size(1080, 720);
  c = new ColorMaster();
  rectMode(CENTER);
  ellipseMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER);
  noStroke();
  initLoads();
  initVisuals();
  textFont(allowJp);

  initButtons();
  initKoalas();
  initResult();
}

void draw(){


  background(bg==1? c.blk:c.whi);
  startBtn.chckOver();
  visBtn.chckOver();
  bgBtn.chckOver();
  titleBtn.chckOver();

  for(int i = 0;i < min(cntCorr,10);i++){
    noTint();
    image(koalaGood, WIN_W/11*(i+1), WIN_H/13*0.75, BUDGE_SIZE, BUDGE_SIZE);
  }
  for(int i = 0;i < min(cntMiss,10);i++){
    noTint();
    image(koalaOhno, WIN_W/11*(i+1), WIN_H/13*10.75, BUDGE_SIZE, BUDGE_SIZE);
  }

  if(mode == 0){
    waiting = false;
    titleScreen();
  }else if(mode == 1){
    if(!waiting){
      makeProblem();
      waiting = true;
    }
    gameScreen();
    if(GAME_ROUND <= done){
      mode = 0;
      done = 0;
      bgBtn.dsap();
      visBtn.dsap();
      titleBtn.dsap();
      bg = 0;
    }
  }else if(mode == 2){
    rsltScreen();
  }
}

void makeProblem(){

  for(int i = 0;i < NUM_OF_KOALA;i++){
    float cenY = (WIN_H/13) * (7 * (i/(NUM_OF_KOALA/2)+1) -5);
    float cenX = (WIN_W/13) * ((3 * (i%(NUM_OF_KOALA/2)+1) )-1);
    koalas.get(i).setPos(cenY, cenX);
  }

  correctAns = (int)random(0, NUM_OF_KOALA);
  for(int i = 0;i < NUM_OF_KOALA;i++){
    int redElem = (int)random(0, 256);
    int grnElem = (int)random(0, 256);
    int bluElem = (int)random(0, 256);
    koalas.get(i).setRGB(redElem, grnElem, bluElem);
    if(i == correctAns){
      ques = "#"+hex(color(redElem, grnElem, bluElem), 6);
      visR.setScale(redElem);
      visG.setScale(grnElem);
      visB.setScale(bluElem);
    }
  }
}
