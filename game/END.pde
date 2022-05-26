void GameOverScreen(){
    background(0);
    fill(255, 0, 0);
    line(width/2, 0, width/2, height);

    fill(255,0,0);
    textSize(130);
    text("GAME OVER",115,250);
    fill(255);
    textSize(50);
    text("- - - ENTER TO CONTINUE - - -",115,500);
    text("- - - BACKSPACE TO TITLE - - -",115,600);
    if (keyPressed) {
        if (keyCode == ENTER) {
            screenNumber = 1;
            println("ENTER");
        }else if (keyCode == BACKSPACE) {
            screenNumber = 0;
            println("BACKSPACE");
        }
    }
}

void ClearScreen(){
    background(240);
    fill(0,0,255);
    fill(0);
    textSize(170);
    text("CLEAR",310,250);
    textSize(50);
    text("- - - BACKSPACE TO TITLE - - -",165,500);
    if (keyPressed) {
        if (keyCode == BACKSPACE) {
            screenNumber = 0;
        }
    }
}