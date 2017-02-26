#include <stdlib.h>
#include <stdio.h>

int main(int argc, char **argv)
{

    int i;

    if (argc < 2) {
        puts("No arguments given...");
    } else {
        puts("Printing arguments:");
        for (i = 1; i < argc; ++i) {
            printf("  %02d. %s\n", i, *(argv + i));
        }
        puts("Done!");
    }

    return EXIT_SUCCESS;

}

