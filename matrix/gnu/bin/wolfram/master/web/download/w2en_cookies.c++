#include <string.h>
#include <stdio.h>

void reverseString(char *str) {
    int len = strlen(str);
    char temp;

    for (int i = 0; i < len / 2; i++) {
        temp = str[i];
        str[i] = str[len - i - 1];
        str[len - i - 1] = temp;
    }
}

int main() {
    char str[] = "Hello, World!";
    reverseString(str);
    printf("Reversed string: %s\n", str);

    return 0;
}
