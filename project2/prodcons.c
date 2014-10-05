// Andrew Land
// Producer and Consumer Problem

#include <sys/mman.h>
#include <pthread.h>
#include <unistd.h>
#include <stdio.h>

int main(int argc, char *argv[]){
  int  is_consumer;
  int  is_producer;
  int  i;
  int  buffer_size;
  int  *num_of_prods;
  int  *num_of_cons;
  int  *counter;
  int  *next_num;
  int  *buffer_start;
  void *mmap_addr;

  pthread_mutex_t mmap_lock;
  pthread_mutex_t first_setup_lock;
  pthread_mutex_t setup_lock;
  pthread_mutex_t consumer_lock;
  pthread_mutex_t producer_lock;

  thread_mutex_init (&mmap_lock        , NULL);
  thread_mutex_init (&first_setup_lock , NULL);
  thread_mutex_init (&setup_lock       , NULL);
  thread_mutex_init (&producer_lock    , NULL);
  thread_mutex_init (&consumer_lock    , NULL);

  is_producer = 0;
  is_consumer = 0;

  pthread_mutex_lock(&mmap_lock);
  if(fork() != 0){
    mmap_addr    = mmap(NULL, (sizeof(int) * (argv[3] + 4)), PROT_READ|PROT_WRITE, MAP_SHARED|MAP_ANONYMOUS, 0, 0);
    num_of_prods = mmap_addr;
    num_of_cons  = mmap_addr + sizeof(int);
    counter      = mmap_addr + (sizeof(int) * 2);
    next_num     = mmap_addr + (sizeof(int) * 3);
    buffer_start = mmap_addr + (sizeof(int) * 4);


    *num_of_prods = argv[1];
    *num_of_cons  = argv[2];
    *counter      = 0;
    *next_num     = 0;

    buffer_size   = argv[3];
  }
  pthread_mutex_unlock(&mmap_lock);

  pthread_mutex_lock(&first_setup_lock);
  if(is_producer == 0 && is_consumer == 0){
    if(*num_of_prods > 0){
      *num_of_prods = *num_of_prods - 1;
      is_producer   = 1;
    }
    else{
      if(*num_of_cons > 0){
        *num_of_cons = *num_of_cons - 1;
        is_consumer  = 1;
      }
    }
  }
  pthread_mutex_unlock(&first_setup_lock);

  pthread_mutex_lock(&setup_lock);
  if(*num_of_prods + *num_of_cons != 0){
    fork();
    is_producer = 0;
    is_consumer = 0;

    if(*num_of_prods > 0){
      *num_of_prods = *num_of_prods - 1;
      is_producer   = 1;
    }
    else{
      if(*num_of_cons > 0){
        *num_of_cons = *num_of_cons - 1;
        is_consumer  = 1;
      }
    }
  }
  pthread_mutex_unlock(&setup_lock);

  while(1){
    if(is_consumer == 1){
      if(*counter == 0){
        //syscall(down);
      }

      pthread_mutex_lock(&consumer_lock);

      printf("%d was consumed.\n", *buffer_start);
      for(i = 0; i < *counter; i++){
        *buffer_start + i = *buffer_start + i + 1;
      }
      *counter = *counter - 1;

      pthread_mutex_unlock(&consumer_lock);

      if(*counter == 0){
        //syscall(up)
      }
    }
    else{
      if(is_producer == 1){
        if(*counter == buffer_size){
          //syscall(down)
        }

        pthread_mutex_lock(&producer_lock);

        printf("%d was created.\n", *next_num);
        *(buffer_start + *counter) = *next_num;
        *counter = *counter + 1;
        *next_num = *next_num + 1;

        pthread_mutex_unlock(&producer_lock);

        if(*counter == buffer_size){
          //syscall(up);
        }
      }
    }
  }

}
