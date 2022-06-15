//set player config
int p_height = 150;
int p_width = 120;
int p_x = width / 10 + p_width + 1;
float p_y = 0.0; 

boolean shiftKey = false;
boolean jump = false;
int HP = 10;
int score = 0;
boolean down = true;

//set screen config
int screenNumber = 0;
int up_count = 0;
int Frame_Rate = 60;
boolean m_click = false;

PImage titleImage;
PImage img;
PImage ebi;
PImage kinoko;
PImage star;

import processing.sound.*;
SoundFile clickSound;
SoundFile jumpSound; 
SoundFile kinokoSound;
SoundFile damegeSound;

//set time
float millisec = 0.0;
float start_time = 0.0;

//set player screen config
int block_size = 60;

ArrayList<Block> block;   //0 -> Null, 1 -> score block, 2 -> item block, 3 -> common block



void setup() {
    //set screen config
    frameRate(Frame_Rate);
    size(1000,700); 

    //set player config
    p_y = ((height / 4)*3) - p_height;

    //load player image
    titleImage = loadImage("title.png");
    img = loadImage("player.png");  
    ebi = loadImage("ebi.png");
    kinoko = loadImage("kinoko.png");
    star = loadImage("star.png");

    block = new ArrayList<Block>(); //ヌルぽ対策

    clickSound = new SoundFile(this, "click.mp3");
    jumpSound = new SoundFile(this, "jump.mp3");
    kinokoSound = new SoundFile(this, "kinoko.mp3");
    damegeSound = new SoundFile(this, "damege.mp3");
}

void draw() {
    //select screen
    if (screenNumber == 0){
        Title();
    }else if (screenNumber == 1) {
        playScreen();
        //println(p_y);
    }else if (screenNumber == 2) {
        GameOverScreen();
    }else if (screenNumber == 3) {
        ClearScreen();
    }
}

void mouseClicked() {
  if (mousePressed) {
    m_click = true;
  } 
}