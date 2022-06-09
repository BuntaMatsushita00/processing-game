void drawBlock() {
  if (block.size() != 0) {
    for (int i = 0; i < block.size() - 1; i++) {    
      rect(block.get(i).block_x, block.get(i).block_y, block_size, block_size);
    }
  }
}

class Block {
    int block_x, block_y, block_style;
    Block(int block_x, int block_y, int block_style){
        this.block_x = block_x;
        this.block_y = block_y;
        this.block_style = block_style;
    }

}
