void playScreen() {
    
    millisec = millis();
    
    

    //set background
    background(0, 229, 255);
    fill(150, 17, 26);
    rect(0,(height / 4) * 3, width, height / 4);
    
    //draw player
    checkShiftKey();
    p_keyPressed();
    fill(255);
    drawBlock();
    drawPlayer();
    time();
    Score();
    makeBlock();
    fill(255, 0 , 0, 130);
    rect(0, 0, width / 10, ((height / 4) * 3));
    blockHitCheck();
    HPdraw();
    damege();
    if (HP == 0) {
        screenNumber = 2;
    }
}


float limit_time = 100.0;
float show_time = 0.0;
void time() {
    show_time = limit_time - ((millisec - start_time) / 1000) + 1;
    textSize(20);
    fill(0);
    String tmp = "time:" + str(int(show_time));
    text(tmp ,900,20);
    if (show_time <= 0.9) {
        screenNumber = 3;
        millisec = 0.0;
    } 
}

void Score(){
    String tmp = "score:" + str(score);
    textSize(20);
    text(tmp, 900, 40);
}

void HPdraw(){
    textSize(30);
    text("HP",(width/4)*2 - 40, 27);
    rect((width/4)*2, 0, 202, 32);
    fill(255,20,147);
    rect((width/4)*2 + 1, 1, HP * 20 + 1, 30);
}