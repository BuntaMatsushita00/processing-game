void drawBlock() {
    if(block.size() != 0) {
        for (int i = 0; i < block.size() - 1; i++) {    
            rect(block.get(i).block_x, block.get(i).block_y, block_size, block_size);
        }
}
}

class Block {
    int block_x, block_y, block_style;
    Block(int block_x, int block_y, int block_style) {
        this.block_x = block_x;
        this.block_y = block_y;
        this.block_style = block_style;
    }
    
}

void makeBlock() {
    if(block.size() != 0) {
        for (int i = 0; i < block.size() - 1; i++) {    
            block.get(i).block_x --;
        }
    }
    if (frameCount % 120 == 0) {
        int ramdom = int(random(9));
        if (ramdom > 2 && ramdom <= 9) {
            if (ramdom % 2 == 0) {
                block.add(new Block(width - block_size,(((height / 4) * 3) - block_size), 3));
            } else {
                block.add(new Block(width - block_size,(((height / 4) * 3) - (block_size * 2)), 4));
            }
        } else if (ramdom == 1) {
            
        }
        
}
}