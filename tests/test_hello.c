#include <stdio.h>

int add(int a, int b);

int run_tests(void) {
    int result = add(2, 3);
    if (result == 5) {
        printf("Test passed!\n");
        return 0;
    } else {
        printf("Test failed! result = %d\n", result);
        return 1;
    }
}
