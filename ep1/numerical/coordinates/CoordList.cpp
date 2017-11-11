//
// Created by Andre C Perello on 25/09/17.
//

#include "CoordList.h"

CoordList::CoordList(unsigned int size){
    this->dim = size;
    this->xVector.reserve(size);
    this->yVector.reserve(size);
}
void CoordList::addCoord(Coord c) {
    this->xVector.push_back(c.x);
    this->yVector.push_back(c.y);
}

void CoordList::makePairs() {
    for(unsigned int i = 0; i < dim; i++) {
        coordVector.push_back(make_pair(this->xVector[i], this->yVector[i]));
    }
    sort(coordVector.begin(), coordVector.end());
    for(unsigned int i = 0; i < dim; i++) {
        this->xVector[i] = coordVector[i].first;
        this->yVector[i] = coordVector[i].second;
    }
}

