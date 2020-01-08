#include <sys/stat.h>
#include <sys/types.h>
#include <stdio.h>

void w_stat(struct _stat& buf) {
  char filename[] = "test.txt";
  _stat(filename, &buf);
}

int main() {
  struct _stat buf;
  w_stat(buf);
  struct _stat& buf2 = buf;
  printf("size:%d\nhard links:%d\nage:%d", buf2.st_size, buf2.st_nlink,buf2.st_mtime);
  return 0;
}
