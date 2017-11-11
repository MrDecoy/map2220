//
// Created by Andre C Perello on 25/09/17.
//

#ifndef NUMERICA_COORDLIST_H
#define NUMERICA_COORDLIST_H

#include "Coord.h"
#include <vector>
#include <algorithm>
using namespace std;

class CoordList {
public:
    vector<double> xVector;
    vector<double> yVector;
    void addCoord(Coord c);
    void makePairs();
    CoordList(unsigned int size);

private:
    vector< pair <double, double> > coordVector;
    unsigned int dim;


};


#endif //NUMERICA_COORDLIST_H
