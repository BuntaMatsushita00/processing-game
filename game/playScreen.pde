void playScreen(){
    //set background
    background(0, 229, 255);
    fill(150, 17, 26);
    rect(0,(height / 4) * 3, width, height / 4);
    
    //draw player
    checkShiftKey();
    p_keyPressed();
    fill(255);
    drawPlayer();
    time();
}


float limit_time = 500.0;
float show_time =0.0;
void time(){
    limit_time = limit_time - (m/100);
    textSize(20);
    fill(0);
    show_time = limit_time;
    text(int(show_time) ,0,70);
}