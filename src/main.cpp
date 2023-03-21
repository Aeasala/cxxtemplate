#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <iostream>
#include "Rectangle.h"
#include "Square.h"
int main(){
    Rectangle rect(5, 9);
    Square sq(3);
    std::cout << std::to_string(sq.getArea()) << std::endl;
    std::cout << std::to_string(rect.getArea()) << std::endl;
    
    return 0;
}
