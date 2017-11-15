//
// Created by Andre C Perello on 11/11/17.
//
#include "gradient.h"


long int preGradient(int cols, int rows, double TOL, MatrixXd& a,
                            VectorXd& b, MatrixXd& c, VectorXd& x, VectorXd& r, double norm(VectorXd&)) {

    Eigen::VectorXd  w(cols), v(cols), u(cols);
    double alpha;
    r = b - a * x;
    w = c * r;
    v = c * w;
    alpha = w.dot(w);
    //cout << "r: " << endl << r << endl;
    //cout << "w: " << endl << w << endl;
    //cout << "v: " << endl << v << endl;
    //cout << "alpha: " << alpha << endl;
    int k = 0;
    while(true) {

        //cout << "-------------" << endl;
        if (norm(v) < TOL) {
            //cout << "K: " << k << endl;
            return k;
        }
        u = a * v;
        //cout << "u: " << endl << u << endl;
        double t = alpha/ u.dot(v);
        //cout << "t: " << endl << t << endl;
        x = x + t * v;
        //cout << "x: " << endl << x << endl;
        r = r - t * u;
        //cout << "r: " << endl << r << endl;
        w = c*r;
        //cout << "w: " << endl << w << endl;
        double beta = w.dot(w);
        //cout << "beta: " << endl << beta << endl;
        if(beta < TOL) {
            if(norm(r)) {
                //cout << "K: " << k << endl;
                return k;
            }

        }
        double s = beta/alpha;
        //cout << "s: " << endl << s << endl;
        v = c*w + s * v;
        //cout << "v: " << endl << v << endl;
        alpha = beta;
        k++;
    }
    //cout << "x: " << x << endl;
    cout << "Max iterations done" <<endl;

}
