//
// Created by Andre C Perello on 11/11/17.
//

#ifndef NUMERICAL_GRADIENT_H
#define NUMERICAL_GRADIENT_H


#include <vector>
#include <iostream>
#include <cmath>
#include <Eigen>
using namespace Eigen;
using namespace std;
long int preGradient(int cols, int rows, double TOL, MatrixXd& a,
                            VectorXd& b, MatrixXd& c, VectorXd& x, VectorXd& r, double norm(VectorXd&));


#endif //NUMERICAL_GRADIENT_H
