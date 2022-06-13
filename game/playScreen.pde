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
    makeBlock();
    fill(255, 0 , 0, 128);
    rect(0, 0, width / 10, height);
}


float limit_time = 100.0;
float show_time = 0.0;
void time() {
    show_time = limit_time - ((millisec - start_time) / 1000) + 1;
    println(show_time);
    textSize(20);
    fill(0);
    //show_time = limit_time;
    text(int(show_time) ,0,70);
    if (show_time <= 0.9) {
        screenNumber = 3;
        millisec = 0.0;
    } 
}