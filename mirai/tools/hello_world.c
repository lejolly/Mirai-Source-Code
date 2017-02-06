#include <stdio.h>

int main(int argc, char **args)
{
    if (argc > 1) {
        printf("echo: %s\n", args[1]);
        return 0;
    }
    return 0;
}
