void GameOverScreen(){
    background(0);
    fill(255, 0, 0);
    line(width/2, 0, width/2, height);

    fill(255,0,0);
    textSize(130);
    text("GAME OVER",115,250);
    fill(255);

    textSize(50);
    text("score:" + str(score), 400 ,400 );
    text("- - - ENTER TO CONTINUE - - -",115,500);
    text("- - - BACKSPACE TO TITLE - - -",115,600);
    if (keyPressed) {
        if (keyCode == ENTER) {
            screenNumber = 1;
            start_time = millis();
            println("ENTER");
        }else if (keyCode == BACKSPACE) {
            screenNumber = 0;
            println("BACKSPACE");
        }
    }
}

void ClearScreen(){
    mouseClicked();
    background(240);
    fill(0,0,255);
    fill(0);
    textSize(170);
    text("CLEAR",260,250);
    textSize(50);
    text("- - - CLICK TO TITLE - - -",150,500);
    if(m_click){
        print("click");
        m_click = false;
        screenNumber = 0;
        start_time = millis();
    }
}