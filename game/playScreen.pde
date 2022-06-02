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
}