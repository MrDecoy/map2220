//
// Created by Andre C Perello on 11/11/17.
//

#ifndef NUMERICAL_SOR_H
#define NUMERICAL_SOR_H

#include <Eigen>
#include <vector>
#include <iostream>
#include <cmath>



using namespace Eigen;
//using namespace Eigen;
using namespace std;
long int sor(int col, int row, double omega, double TOL, MatrixXd& mat, VectorXd& b, VectorXd& x0, VectorXd& r, double norm(VectorXd&));


#endif //NUMERICAL_SOR_H
