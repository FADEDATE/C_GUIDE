#include "../include/operations.h"

float divide(int a, int b) {
    if (b == 0) {
        return 0.0f;
    }
    return static_cast<float>(a) / b;
}