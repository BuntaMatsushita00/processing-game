
void checkShiftKey() {
    textSize(10);
    text("SHIFT" + str(shiftKey),100,10);
    if (keyPressed) {
        if (key == CODED) {
            if (keyCode == SHIFT) {
                if (shiftKey == false) {
                    shiftKey = true;
                }
            } else if (keyCode == CONTROL) {
                shiftKey = false;
            }
        }
    }
}

void p_keyPressed() {
    //player's function
    fill(0);
    if (keyPressed) {
        if (key == CODED) {
            if (shiftKey == true) {
                if (keyCode == UP) {
                    if (up_count <= 0 && p_y > ((height / 4) * 3) - (p_height * 2.5)) {
                        up_count += Frame_Rate * 2;
                        jump = true;
                        text("SHIFT UP",10,10);
                    }
                    else {
                        text("jump cool time",10,10);
                    }
                }
                else if (keyCode == LEFT) {
                    p_x = p_x - 3;
                    text("SHIFT LEFT",10,10);
                }
                else if (keyCode == RIGHT) {
                    p_x = p_x + 3;
                    text("SHIFT RIGHT",10,10);
                }  
            } else{
                if (keyCode == UP) {
                    if (up_count <= 0 && p_y > ((height / 4) * 3) - (p_height * 2.5)) {
                        up_count += Frame_Rate * 2;
                        jump = true;
                        text("UP",10,10);
                    }
                    else {
                        text("jump cool time",10,10);
                    }
                }
                else if (keyCode == LEFT) {
                    p_x = p_x - 2;
                    text("LEFT",10,10);
                }
                else if (keyCode == RIGHT) {
                    p_x = p_x + 2;
                    text("RIGHT",10,10);
                }  
            }
        }
    }
}


void drawPlayer() {
    //draw player function
    if (jump && p_y < ((height / 4) * 3) - (2.2 * p_height) && p_y > ((height / 4) * 3) - (3 * p_height) ){
        p_y -= 4.0;
    } else if (jump && p_y > ((height / 4) * 3) - (2.1 * p_height)) {
        p_y -= 4.0;
    } else if (jump && p_y <= ((height / 4) * 3)) {
        jump = false;
    } else if (down){
        p_y += 4.0;
    }
    up_count -= 2;
    if (p_y >= ((height / 4) * 3) - p_height) {
        p_y = ((height / 4) * 3) - p_height;
    }
    if (p_x >= width - p_width) {
        p_x = width - p_width;
    } else if (p_x < 0) {
        p_x = 0;
    }
    image(img, p_x, p_y);  //draw player
    fill(0,255,0, 128);
    rect(p_x, p_y,120,150);
}