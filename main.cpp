#include <iostream>
#include "calculator.hpp"

int main()
{
    Calculator calc;
    std::cout << "2 + 2 = " << calc.add(2, 2) << std::endl;
    return 0;
}