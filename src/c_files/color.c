#include <stdio.h>
#include "color.h"

void print_red(const char* text) {
    printf("\033[1;31m%s\033[0m", text);
}

void print_green(const char* text) {
    printf("\033[1;32m%s\033[0m", text);
}

void print_blue(const char* text) {
    printf("\033[1;34m%s\033[0m", text);
}