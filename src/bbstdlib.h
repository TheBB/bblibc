// Typedefs
typedef long unsigned int size_t;
typedef long int ssize_t;

// Functions implemented in asm
void __sys_write(int fd, const void *s, size_t length);
size_t __sys_brk(void *addr);

// Functions implemented in C
void print(const char *s);
