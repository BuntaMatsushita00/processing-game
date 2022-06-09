//set player config
int p_x = 1;
float p_y = 0.0;  //player height -> 150
int p_height = 150;
int p_width = 120;
boolean shiftKey = false;

//set screen config
int screenNumber = 0;
int up_count = 0;
int Frame_Rate = 60;
boolean m_click = false;

PImage img;

float m = millis();

void setup() {
    //set screen config
    frameRate(Frame_Rate);
    size(1000,700); 

    //set player config
    p_y = ((height / 4)*3) - p_height;
    img = loadImage("player.png");
}

void draw() {
    
    
    //select screen
    if (screenNumber == 0){
        Title();
    }else if (screenNumber == 1) {
        playScreen();
        println(p_y);
    }else if (screenNumber == 2) {
        GameOverScreen();
    }else if (screenNumber == 3) {
        ClearScreen();
    }
}

void mouseClicked() {
  if (!m_click) {
    m_click = true;
  } 
}