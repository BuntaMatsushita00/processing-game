void drawBlock() {
    for (int i = 0; i < block_style.length - 1; i++) {    
        if (block_style[i] == 0) {

        } else {
            rect(block_x[i], block_y[i], block_size, block_size);
        }
    }
}