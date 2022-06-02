void Title() {
    background(240);
    fill(0,0,255);
    fill(0);
    textSize(170);
    text("Title",310,250);
    textSize(50);
    text("- - - CLICK TO START - - -",165,500);
    /*
    if (keyPressed) {
        if (keyCode == ENTER) {
            println("press");
            screenNumber = 1;
        }
    }
    */
    if(m_click){
        print("click");
        m_click = false;
        screenNumber = 1;
    }
    

}