// Typedefs
typedef unsigned long long size_t;

// Functions implemented in asm
void __sys_write(size_t fd, const char *s, size_t length);

// Functions implemented in C
void print(const char *s);
