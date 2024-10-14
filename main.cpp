#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    double a = 10.0;
    double b = 10.0;

    std::cout << "Addition: " << calc.Add(a, b) << std::endl;
    std::cout << "Subtraction: " << calc.Sub(a, b) << std::endl;
    std::cout << "Multiplication: " << calc.Mul(a, b) << std::endl;
    std::cout << "Division: " << calc.Div(a, b) << std::endl;
    std::cout << "Square: " << calc.Square(a) << std::endl;

    return 0;
}