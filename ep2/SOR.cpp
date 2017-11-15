//
// Created by Andre C Perello on 11/11/17.
//
#include "SOR.h"


long int sor(int col, int row, double omega, double TOL, MatrixXd& mat, VectorXd& b, VectorXd& x0, VectorXd& r, double norm(VectorXd&)) {

    Eigen::VectorXd x(row);
    
    long int k = 0;
    while(true) {

        for(int i = 0; i < row; i++) {
            double sumJ = 0;
            for(int j = 0; j < col; j++) {
                if(j < i) {
                    sumJ += mat(i,j)*x(j);
                }
                else if (j > i){
                    sumJ += mat(i, j)*x0[j];
                }
            }
            x(i) = (1-omega)*x0(i) + omega/mat(i, i)*(b(i) - sumJ);

        }
        //cout << sqrt((x-x0).dot(x-x0)) << endl;
        //cout << x << endl;
        //cout << "========" << endl;
        //Calculate norm of x-x0
        r = x - x0;
        if(norm(r) < TOL) {


            x = x0;
            return k;

        }
        if(k >= 100000) return k;
        k++;
        x0 = x;

    }
    cout << "Maximum number of iterations achieved! OMEGA: " << omega << endl;
}
