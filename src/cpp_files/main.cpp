#include <iostream>
#include <string>
#include "../include/operations.h"
#include "../include/color.h"
#include "../include/calc.h"

int main() {
    init_calculator();
    
    int a = 10, b = 5;
    
    print_blue("Calculator Demo\n");
    print_green("===============\n");
    
    std::cout << a << " + " << b << " = " << add(a, b) << std::endl;
    std::cout << a << " - " << b << " = " << subtract(a, b) << std::endl;
    std::cout << a << " * " << b << " = " << multiply(a, b) << std::endl;
    std::cout << a << " / " << b << " = " << divide(a, b) << std::endl;
    
    print_red("\nEnd of demo\n");
    
    cleanup_calculator();
    return 0;
}