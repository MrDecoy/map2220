//
// Created by Andre C Perello on 11/11/17.
//

#ifndef NUMERICAL_MAIN_H
#define NUMERICAL_MAIN_H


#include <fstream>
#include <fstream>
#include <vector>
#include "gradient.h"
#include "Eigen/SparseExtra"
using namespace Eigen;
using namespace std;
#include "gradient.h"
typedef double (*normFunction)(VectorXd& v);
double infinityNorm(VectorXd& v);
double norm2(VectorXd& v);

#endif //NUMERICAL_MAIN_H
