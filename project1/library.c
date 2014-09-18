#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/fb.h>
#include <fcntl.h>
#include <sgtty.h>
#include <termios.h>

#include <stdio.h>

typedef unsigned short color_t;
struct termios original;

void init_graphics(){
  int fd;
  unsigned int length;
  char *addr;
  char *pathname = "/dev/fb0";

  struct fb_var_screeninfo *res_info;
  struct fb_fix_screeninfo *bit_depth;

  fd = open(pathname, O_RDWR);

  ioctl(fd, FBIOGET_VSCREENINFO, res_info);
  ioctl(fd, FBIOGET_FSCREENINFO, bit_depth);

  length = res_info->yres_virtual * bit_depth->line_length;

  addr = mmap(NULL, length, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
}

void disable_echo(){
  struct termios disabled;

  ioctl(0, TCGETS, &original);

  disabled = original;
  disabled.c_lflag &= ~ECHO;
  disabled.c_lflag &= ~ICANON;

  ioctl(0, TCSETS, &disabled);
}

void enable_echo(){
  ioctl(0, TCSETS, &original);
}

int main(){
  char str[80];

  init_graphics();
  disable_echo();

  printf("\n Enter your password: \n");
  scanf("%s", &str);

  enable_echo();
}
