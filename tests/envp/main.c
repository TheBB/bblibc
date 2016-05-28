#include "stdlib.h"

int main(int argc, char **argv, char **envp)
{
    while (*envp) {
        print(*envp);
        print("\n");
        envp++;
    }

    return 0;
}
