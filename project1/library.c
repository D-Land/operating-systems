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

void sleep_ms(int t){
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
  unsigned int *new_addr;
  unsigned short adjustment;

  /* adjustment = ((x % 640) + ((y % 480) * 640)); */
  adjustment = x + (y* 320);

  new_addr = addr;
  new_addr = new_addr + adjustment;
  *new_addr = c;
}

// - Main ----------------------------------------------------------------------

int main(int argc, char* argv[]){
  color_t c = 65534;
  int x = 0;
  char cc = NULL;
  int i = 0;

  init_graphics();
  clear_screen();
  while(1){
    /* cc = getkey(); */
    i++;
    draw_pixel(i, 0, c)
    /* if(cc == 'q'){ */
    /*   exit_graphics(); */
    /*   break; */
    }
  }
}
