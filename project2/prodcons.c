// Andrew Land
// Producer and Consumer Problem

#include <sys/types.h>
#include <sys/mman.h>
#include <pthread.h>
#include <linux/unistd.h>
#include <unistd.h>
#include <stdio.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/wait.h>

struct cs1550_node{
  struct task_struct *task;
  struct cs1550_node *next;
};

struct cs1550_sem{
  int value;
  struct cs1550_node *first;
  struct cs1550_node *last;
};

void up(struct cs1550_sem *);
void down(struct cs1550_sem *);

int main(int argc, char *argv[]){
  int i;
  int j;

  int num_of_prods;
  int num_of_cons;
  int buffer_size;

  struct cs1550_sem *mutex;
  struct cs1550_sem *empty;
  struct cs1550_sem *full;

  int *buffer_addr;
  int *buffer_end;
  int *next_num_addr;

  num_of_prods = atoi(argv[1]);
  num_of_cons  = atoi(argv[2]);
  buffer_size  = atoi(argv[3]);

  mutex = mmap(NULL, sizeof(struct cs1550_sem), PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, 0, 0);
  empty = mmap(NULL, sizeof(struct cs1550_sem), PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, 0, 0);
  full  = mmap(NULL, sizeof(struct cs1550_sem), PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, 0, 0);

  buffer_addr   = mmap(NULL, (sizeof(int) * buffer_size), PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, 0, 0);
  next_num_addr = mmap(NULL, sizeof(int), PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, 0, 0);

  *next_num_addr = 0;
  buffer_end     = buffer_addr;

  mutex->value = 1;
  mutex->first = NULL;
  mutex->last  = NULL;

  empty->value = buffer_size;
  empty->first = NULL;
  empty->last  = NULL;

  full->value  = 0;
  full->first = NULL;
  full->last  = NULL;

  for(i = 0; i < num_of_prods; i++){
    if(fork() == 0){
      while(1){
        down(empty);
        down(mutex);

        printf("Producer %d, produced %d \n", i, *next_num_addr);
        *buffer_end = *next_num_addr;
        buffer_end = buffer_end + 1;
        *next_num_addr = *next_num_addr + 1;

        up(mutex);
        up(full);
      }
    }
  }

  for(i = 0; i < num_of_cons; i++){
    if(fork() == 0){
      while(1){
        down(full);
        down(mutex);

        printf("Consumer %d, consumed %d \n", i, *buffer_addr);
        for(j = 0; j < full->value; j++){
          *(buffer_addr + j) = *(buffer_addr + j + 1);
        }

        up(mutex);
        up(empty);
      }
    }
  }
  waitpid(-1, NULL, 0);
}

void up(struct cs1550_sem *sem){
  syscall(__NR_cs1550_up, sem);
}

void down(struct cs1550_sem *sem){
  syscall(__NR_cs1550_down, sem);
}
