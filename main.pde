int mode = 0;   // 0:title, 1:game, 2:result
int bg = 0;     // 0:dark, 1:light
int visu = 0;   // 0:off, 1:on
int correctAns;
int score = 0;
int done = 0;
boolean waiting = false;

PImage koalaFace;
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
}

void draw(){

  startBtn.chckOver();
  visBtn.chckOver();
  bgBtn.chckOver();
  titleBtn.chckOver();

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
  }
}

void makeProblem(){

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
