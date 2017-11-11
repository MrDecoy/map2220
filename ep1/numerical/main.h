//
// Created by Andre C Perello on 25/09/17.
//


#ifndef NUMERICA_MAIN_H
#define NUMERICA_MAIN_H

#include <iostream>
#include <cmath>
#include <fstream>
#include <vector>
#include <algorithm>
#include "coordinates/Coord.h"
#include <random>
#include <iostream>
#include <unistd.h>
#include <iomanip>
#include "numericalAlgorithms/spline.h"
#include "coordinates/CoordList.h"
#include "numericalAlgorithms/SplineDiff.h"
#include <cstdlib>
#include <fstream>
#include <iostream>
#include <stdlib.h>
#include <sstream>
using namespace std;

vector<double> genPoints(int pointsSize);
double transformPoint(double d);
double d2r(double d);
void plotSpline(vector<double> up, vector<double> down, vector<double> points, string path, string name,
                 int pointsSize);
void plot(vector<double> x, vector<double> y, string path, string name, int n);
#endif //NUMERICA_MAIN_H
