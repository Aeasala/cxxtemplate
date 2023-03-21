#include "Square.h"

/* ROT:
    Obj::Obj(args..) : ChildN(argM..) ... memberQ(valR) ... */

/* Create a square of sideLength l, i.e. Rectangle of length=width=l */
Square::Square(int l) : Rectangle(l, l), sideLength(l) {}

int Square::getArea() {
    return sideLength * sideLength;
}