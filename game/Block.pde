void drawBlock() {
    if (block.size() != 0) {
        for (int i = 0; i < block.size() - 1; i++) {
            if (block.get(i).durable != 0) {
                if (block.get(i).block_style == 0) {   
                    image(ebi, block.get(i).block_x, block.get(i).block_y);
                } else if (block.get(i).block_style == 1) { 
                    image(star, block.get(i).block_x, block.get(i).block_y);
                } else if (block.get(i).block_style == 2) {   
                    image(kinoko, block.get(i).block_x, block.get(i).block_y);
                } else {
                    if (block.get(i).block_x < -90) {
                      block.remove(i);
                    } else {
                    rect(block.get(i).block_x, block.get(i).block_y, block_size, block_size);
                    }
                } 
            }
        }
    }
}

class Block {
    int block_x, block_y, block_style, durable;
    Block(int block_x, int block_y, int block_style, int durable) {
        this.block_x = block_x;
        this.block_y = block_y;
        this.block_style = block_style;
        this.durable = durable;
    }
    
}

void makeBlock() {
    if (block.size() != 0) {
        for (int i = 0; i < block.size() - 1; i++) {    
            block.get(i).block_x -= 2;
        }
    }
    if (frameCount % 120 == 0) {
        int ramdom = int(random(9));
        if (ramdom > 2 && ramdom <= 9) {
            if (ramdom % 2 == 0) {
                block.add(new Block(width - block_size, (((height / 4) * 3) - block_size), 3, 1));
            } else {
                block.add(new Block(width - block_size, (((height / 4) * 3) - (block_size * 2)), 4, 1));
            }
        } else if (ramdom == 2) {
            block.add(new Block(width - block_size, (((height / 4) * 3) - 51), 2, 1));
        } else if (ramdom == 1) {
            block.add(new Block(width - block_size, (((height / 4) * 3) - p_height - 100), 1, 1));
        } else if (ramdom == 0) {
            block.add(new Block(width - block_size, (((height / 4) * 3) - 150), 0, 1));
        }
        
    }
}

int hitcheck(int p_x, float p_y, int p_width, int p_height,int b_x, int b_y,int b_height, int b_width) {
    if (HitCheck(p_x, p_y, p_width, p_height, b_x, b_y, b_height, b_width)) {
      if ((b_x - 20 < p_x + p_width)&&(b_x + 4 > p_x + p_width)) {
        return 3; 
      } else if ((b_x + b_width > p_x)&&(b_x + 20 < p_x )) {
        return 4; 
      } else if ((p_y + p_height) > b_y - 1){
        return 1;
      } else if (p_y < b_height + b_y + 20) {
        return 2; 
      }  else {
        return 10;
      }
    } else {
      return 0;
    }
    
} 

boolean HitCheck(int p_x, float p_y, int p_width, int p_height, int b_x, int b_y,int b_height, int b_width) {
    return p_x < b_x + b_width && b_x < p_x + p_width && p_y < b_y + b_height && b_y < p_y + p_height;
} 

void blockHitCheck() {
    for (int i = 0; i < block.size() - 1; i++) {
        if (block.get(i).block_style == 0) {
            boolean flag = HitCheck(p_x, p_y, p_width, p_height, block.get(i).block_x, block.get(i).block_y, 50,50);
            if (flag) {
                block.remove(i);
                if (HP < 10){
                HP += 1;
                }
            }
        } else if (block.get(i).block_style == 2) {
            boolean flag = HitCheck(p_x, p_y, p_width, p_height, block.get(i).block_x, block.get(i).block_y, 50,50);
            if (flag) {
                block.remove(i);
                kinokoSound.play();
                HP -= 2;
            }
        } else if (block.get(i).block_style == 1) {
            boolean flag = HitCheck(p_x, p_y, p_width, p_height, block.get(i).block_x, block.get(i).block_y, 50,50);
            if (flag) {
                block.remove(i);
                score += 100;
            }
        } else {
            int flag = hitcheck(p_x, p_y, p_width, p_height, block.get(i).block_x, block.get(i).block_y, block_size, block_size);
            println(flag);
            if (flag == 1 && jump == false) {
                p_y = block.get(i).block_y - 150;
                down = false;
            } else if (flag == 2) {
                p_y = block.get(i).block_y + 60;
                down = true;
            } else if (flag == 3) {
                p_x = block.get(i).block_x - p_width;
                down = true;
            } else if (flag == 4) {
                p_x = block.get(i).block_x + block_size;
                down = true;
            } else if (p_y + p_height - 4 != block.get(i).block_y){
              down = true;
            }
        }
    }
}