//
// Created by Andre C Perello on 28/09/17.
//

#ifndef NUMERICA_SPLINEDIFF_H
#define NUMERICA_SPLINEDIFF_H
#include <vector>
#include "spline.h"
#include <random>
#include <fstream>
#include <iostream>
#include "spline.h"
#include "../main.h"


using namespace std;

class SplineDiff {
public:
    int n;
    SplineDiff(vector<double> points, vector<double> upVector, vector<double> downVector, int n);
    tk::spline sHeight;
    vector<double> dif, derivate, points;
    void getDerivate(tk::spline u, tk::spline d,string path, string name);
    void plotHeight(vector<double> points, string path, string name, int plotSize);
private:

};


#endif //NUMERICA_SPLINEDIFF_H
