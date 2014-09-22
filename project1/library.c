#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/fb.h>
#include <fcntl.h>
#include <sgtty.h>
#include <termios.h>
#include <time.h>
#include <unistd.h>


#include <stdio.h>

typedef unsigned short color_t;
struct termios original_terminal_settings;
unsigned int map_size;
unsigned int *addr;
int fd;

// - Echo Enable/Disable -------------------------------------------------------

void disable_echo(){
  struct termios disabled;

  ioctl(0, TCGETS, &original_terminal_settings);

  disabled = original_terminal_settings;
  disabled.c_lflag &= ~ECHO;
  disabled.c_lflag &= ~ICANON;

  ioctl(0, TCSETS, &disabled);
}

void enable_echo(){
  ioctl(0, TCSETS, &original_terminal_settings);
}

// - Required Functions --------------------------------------------------------

void init_graphics(){
  char *PATH_TO_FRAMEBUFFER = "/dev/fb0";
  unsigned int yres;
  unsigned int length;

  struct fb_var_screeninfo virtual_resolution_info;
  struct fb_fix_screeninfo bit_depth_info;

  fd = open(PATH_TO_FRAMEBUFFER, O_RDWR);

  ioctl(fd, FBIOGET_VSCREENINFO, &virtual_resolution_info);
  ioctl(fd, FBIOGET_FSCREENINFO, &bit_depth_info);

  map_size = virtual_resolution_info.yres_virtual * bit_depth_info.line_length;

  addr = mmap(NULL, map_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);

  disable_echo();
  fcntl(0, F_SETFL, O_NONBLOCK);
}

void exit_graphics(){
  munmap(addr, map_size);
  close(fd);
  enable_echo();
}

void clear_screen(){
  printf("\033[2J");
}

void sleep_ms(long t){
  struct timespec sleep_settings, other;

  sleep_settings.tv_sec  = 0;
  sleep_settings.tv_nsec = t * 1000000;

  nanosleep(&sleep_settings, &other);
}

char getkey(){
  char c;
  read(0, &c, sizeof(c));
  return c;
}

void draw_pixel(int x, int y, color_t c){
  unsigned short *new_addr;
  unsigned int adjustment;

  adjustment = ((x % 640) + ((y % 480) * 640));

  new_addr = addr;
  new_addr = new_addr + adjustment;
  *new_addr = c;
}

void draw_rect(int x1, int y1, int width, int height, color_t c){
  int x = 0;
  int y = 0;

  for(x = x1; x <= width+1; x++){
    draw_pixel(x, y1, c);
    draw_pixel(x, y1 + height, c);
  }

  for(y = y1; y <= height+1; y++){
    draw_pixel(x1, y, c);
    draw_pixel(x1 + width, y, c);
  }
}

// - Main ----------------------------------------------------------------------

int main(int argc, char* argv[]){
  color_t c = 65534;
  char cc = NULL;
  int x = 0;
  int y = 0;

  init_graphics();
  clear_screen();
  /* while(x < 100){ */
  /*   draw_pixel(x, 0, c); */
  /*   x = x+1; */
  /*   y = 0; */
  /*   while(y < 100){ */
  /*     draw_pixel(x, y, c); */
  /*     y=y+1; */
  /*   } */
  /* } */ 
  draw_rect(2,2,100,100,c);
  while(1){
    cc = getkey();
    if(cc == 'q'){
      break;
    }
  }
  exit_graphics();
}
