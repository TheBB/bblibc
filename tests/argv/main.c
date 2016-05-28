#include "bbstdlib.h"

int main(int argc, char **argv)
{
    for (int i = 1; i < argc; i++) {
        print(argv[i]);
        print("\n");
    }
}
