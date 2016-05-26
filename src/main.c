#include "bbstdlib.h"

void print(const char *s)
{
    size_t length = 0;
    while (s[length] != '\0')
        length++;
    __sys_write(1, s, length);
}
