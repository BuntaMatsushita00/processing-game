//set player config
int p_x = 1;
int p_y = (height / 4)*3 + 80;  //player height -> 80
int p_height = 80;
int p_width = 60;
boolean shiftKey = false;
int screenNumber = 2;


void setup() {
    frameRate(60);
    size(1000,700); //set screen config
}

void draw() {
    if (screenNumber == 0){
        Title();
    }else if (screenNumber == 1) {
        playScreen();
    }else if (screenNumber == 2) {
        GameOverScreen();
    }else if (screenNumber == 3) {
        ClearScreen();
    }
}
