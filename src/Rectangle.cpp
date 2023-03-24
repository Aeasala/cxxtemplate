#include "Rectangle.h"

/* Create Rectcangle object of length l and width w. */
Rectangle::Rectangle(int l, int w) : length(l), width(w) {}

/* A=l*w */
int Rectangle::getArea() {
    return length * width;
}