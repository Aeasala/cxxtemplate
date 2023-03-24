#ifndef RECTANGLE_H
#define RECTANGLE_H

/* Virtual Methods:
    Run-time polymorphism?  If you were to create a <Rectangle*> and assign it a &<Square>, calling ->getArea() would perform the method in 
        Square.cpp 
    If not virtual, it will call the function as if it were a <Rectangle> object.
    */

class Rectangle {
public:
    Rectangle(int l, int w);
    virtual int getArea();
protected:
    int length, width;
};

#endif /* RECTANGLE_H */