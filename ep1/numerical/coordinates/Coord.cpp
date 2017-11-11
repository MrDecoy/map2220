//
// Created by Andre C Perello on 25/09/17.
//

#include "Coord.h"

void Coord::setCoord(double xAxis, double yAxis) {
    x = xAxis;
    y = yAxis;
}
bool operator<(const Coord &c1, const Coord &c2) {
    return c1.x < c2.x;
}

bool operator==(const Coord &c1, const Coord &c2) {
    return c1.x == c2.x;
}