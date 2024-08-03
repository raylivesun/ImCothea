# ImCothea ([wolfram/alpha](https://www.wolframalpha.com/))

It seems like you're referring to the game "Immortals Fenyx Rising" by KOG Studios. The character ImCothea is a playable hero in the game. If you're looking for information about her abilities, story, or other aspects, you can refer to the game's official documentation, in-game lore, or fan content.

# makefile 
```makefile
CXX = g++
CXXFLAGS = -Wall -Werror -Wextra -pedantic -std=c++17 -g main.cpp
LDFLAGS =  main.cpp

SRC = 
OBJ = $(SRC:.cc=.o)
EXEC = imcothea

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CXX) $(LDFLAGS) -o $@ $(OBJ) $(LBLIBS)

clean:
	rm -rf $(OBJ) $(EXEC)
```    

# c++ and C++ Library
```c++
#include <string.h>
#include <stdio.h>
#include <stdlib.h>


// Function to check if a string is a palindrome
int is_palindrome(const char* str) {
    int len = strlen(str);
    int i = 0, j = len - 1;

    while (i < j) {
        if (str[i] != str[j]) {
            return 0;
        }
        i++;
        j--;
    }

    return 1;
}

// Function to find the longest palindromic substring
char* longest_palindromic_substring(const char* str) {
    int len = strlen(str);
    int maxLength = 1;
    int start = 0;
    int i, j;

    for (i = 0; i < len; i++) {
        // Check for odd-length palindromes
        for (j = i; j < len; j++) {
            if (is_palindrome(str + i)) {
                int length = j - i + 1;
                if (length > maxLength) {
                    maxLength = length;
                    start = i;
                }
            }
        }

        // Check for even-length palindromes
        for (j = i + 1; j < len; j++) {
            if (str[i] == str[j] && is_palindrome(str + i)) {
                int length =
                j - i + 1;
                if (length > maxLength) {
                    maxLength = length;
                    start = i;
                }
                break;
            }
            if (str[i] == str[j] && is_palindrome(str + i + 1)) {
                int length =
                j - i;
                if (length > maxLength) {
                    maxLength = length;
                    start = i + 1;
                }
                break;
            }
            if (str[i] == str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
            if (str[i] != str[j]) {
                break;
            }
        }
        if (str[i] == str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
        if (str[i] != str[j]) {
            break;
        }
    }


    char* longestPalindrome = 0;
    strncpy(longestPalindrome, str + start, maxLength);

    return longestPalindrome;
}


int main() {
    char str[] = "babad";
    char* longestPalindrome = longest_palindromic_substring(str);
    printf("Longest palindromic substring: %s\n", longestPalindrome);
    free(longestPalindrome);

    return 0;
}
```
# install makefile
$-> make all