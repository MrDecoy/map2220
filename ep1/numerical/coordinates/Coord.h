//
// Created by Andre C Perello on 25/09/17.
//

#ifndef NUMERICA_COORD_H
#define NUMERICA_COORD_H
#include <vector>
using namespace std;

class Coord {
    public:
        double x;
        double y;

        void setCoord(double xAxis, double yAxis);
        Coord(double x, double y) {
            this->x = x;
            this->y = y;
        }

};


#endif //NUMERICA_COORD_H
