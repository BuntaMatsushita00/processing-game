//set player config
int p_x = 0;
int p_y = (height / 4)*3 + 80;  //player height -> 80
int p_height = 80;
int p_width = 60;
boolean shiftKey = false;

void setup() {
    size(1000,700); //set screen config
}

void draw() {
    //set background
    background(0, 229, 255);
    fill(150, 17, 26);
    rect(0,(height / 4) * 3, width, height / 4);
    
    //draw player
    checkShiftKey();
    p_keyPressed();
    fill(255);
    drawPlayer();
    println(shiftKey);
}
