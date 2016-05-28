#include "stdlib.h"

void print(const char *s)
{
    size_t length = 0;
    while (s[length] != '\0')
        length++;
    __sys_write(1, s, length);
}

void printptr(void *ptr)
{
    char s[17];

    size_t val = (size_t)ptr;
    for (int i = 15; i >= 0; i--) {
        char j = val % 16;
        if (j < 10)
            s[i] = '0' + j;
        else
            s[i] = 'a' + (j - 10);
        val /= 16;
    }
    s[16] = 0;

    print("0x");
    print(s);
    print("\n");
}
