/* Aeasala */

/************/
/* Includes */
#include <iostream>
#include "Rectangle.h"
#include "Square.h"
#include "main.hpp"
/************/

/*********/
/* Types */

/*********/

/********/
/* Data */

/********/

/***********************/
/* Function Prototypes */

/***********************/

///////////////////////////////////////////////////////////////////////

/*********************************************************************/
/*                       Function Definitions                        */

int main(){
    Rectangle rect(5, 9);
    Square sq(3);
    std::cout << "Hello World!" << std::endl;
    std::cout << std::to_string(sq.getArea()) << std::endl;
    std::cout << std::to_string(rect.getArea()) << std::endl;
    
    return 0;
}

/*********************************************************************/
