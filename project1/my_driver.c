typedef unsigned short color_t;

void clear_screen();
void exit_graphics();
void init_graphics();
char getkey();
void sleep_ms(long ms);

void draw_pixel(int x, int y, color_t color);
void draw_rect(int x1, int y1, int width, int height, color_t c);

int main(int argc, char* argv[]){
  color_t c = 65534;
  int x = 0;
  int y = 0;

  init_graphics();
  clear_screen();
  while(x < 100){
    draw_pixel(x, 0, c);
    x = x+1;
    y = 0;
    while(y < 100){
      draw_pixel(x, y, c);
      y=y+1;
    }
  }
  while(1){
    if(getkey())
      break;
  }
  exit_graphics();
  return 0;
}
