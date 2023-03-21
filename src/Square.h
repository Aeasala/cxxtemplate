#ifndef SQUARE_H
#define SQUARE_H

#include "Rectangle.h"

/* overrides:
    effectivly 'makes' its inherited class's method (in this case getArea) virtual, implicitly - if it wasn't already stated to be virtual
        by the inherited class.
    */

class Square : public Rectangle {
public:
    Square(int l);
    int getArea() override;
private:
    int sideLength;
};

#endif /* SQUARE_H */