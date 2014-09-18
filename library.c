#include <sys/types.h>
#include <sys/stat.h>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <linux/fb.h>
#include <fcntl.h>

#include <stdio.h>

typedef unsigned short color_t;

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
  
  printf("\n%d\n", sizeof(short));
}

int main(){

  init_graphics();

}
