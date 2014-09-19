#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/fb.h>
#include <fcntl.h>
#include <sgtty.h>
#include <termios.h>
#include <time.h>

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

  struct fb_var_screeninfo *virtual_resolution_info;
  struct fb_fix_screeninfo *bit_depth_info;

  fd = open(PATH_TO_FRAMEBUFFER, O_RDWR);

  ioctl(fd, FBIOGET_VSCREENINFO, virtual_resolution_info);
  ioctl(fd, FBIOGET_FSCREENINFO, bit_depth_info);

  map_size = *virtual_resolution_info->yres_virtual * *bit_depth_info->line_length;

  yres = virtual_resolution_info->yres_virtual;
  length = bit_depth_info->line_length;

  printf("\nyres: %u\n", virtual_resolution_info->yres_virtual);
  printf("length: %u\n", bit_depth_info->line_length);
  printf("map_size: %u\n", map_size);

  addr = mmap(NULL, map_size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
  printf("\nmap_size: %u\naddr: %u\n", map_size, addr);

  disable_echo();
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
  struct timeval timeout;
  timeout.tv_sec = 0;
  timeout.tv_usec = 0;

  fd_set fds;
  FD_ZERO(&fds);
  FD_SET(0, &fds);
  select(1, &fds, NULL, NULL, &timeout);
  return FD_ISSET(0, &fds);
}

void draw_pixel(int x, int y, short c){
  unsigned int *new_addr;
  unsigned int adjustment;

  adjustment = ((x % 640) + ((y % 480) * 640)) * 16;

  new_addr = addr;
  new_addr = new_addr + adjustment;
  printf("\naddr: %u\nadjustment: %u\nnew_addr: %u\n", addr, adjustment, new_addr);
}

// - Main ----------------------------------------------------------------------

int main(int argc, char* argv[]){
  color_t c = 65534;

  init_graphics();
  /* clear_screen(); */
  draw_pixel(1, 1, 0);
  while(1){
    if(getkey())
      break;
  }
  exit_graphics();
}
