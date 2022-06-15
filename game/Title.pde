void Title() {
    mouseClicked();
    image(titleImage,0,0);
    if(m_click){
        print("click");
        clickSound.play();
        m_click = false;
        screenNumber = 1;
        start_time = millis();
        HP = 10;
        score = 0;
        block.clear();
    }
    

}