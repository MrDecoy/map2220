
using namespace std;


#include <fstream>
#include <vector>
#include "gradient.h"
#include "Eigen/SparseExtra"
using namespace Eigen;
using namespace std;
#include "SOR.h"
#include "main.h"

void compareMatrixes(vector<string> matrixes);

int main(int argc, char* argv[]) {
    //SparseMatrix<double, ColMajor> mat;
    //loadMarket(mat, "LFAT5/LFAT5.mtx");
    ///cout << mat << endl;
    std::vector<std::string> allArgs(argv,argv + argc);
    compareMatrixes(allArgs);

    /*SparseMatrix<double, ColMajor> mat;
    loadMarket(mat, "LFAT5/LFAT5.mtx");

    //Checamos se possui simetria
    bool complexo=false, vector=false;
    int sym;
    getMarketHeader("LFAT5/LFAT5.mtx", sym, complexo, vector);
    if (sym != 0) { // symmetric matrices, only the lower part is stored
        SparseMatrix<double, ColMajor> temp;
        temp = mat;
        mat = temp.selfadjointView<Lower>();
    }

    int cols, rows;
    cols = mat.cols();
    rows = mat.rows();
    VectorXd x;
    x.setOnes(cols);
    VectorXd b(cols);
    b = mat * x;

    cout << b - mat*x << endl << "----" << endl;
    Eigen::MatrixXd c;
    c.setIdentity(rows, cols);
    x.setZero();
    MatrixXd a = MatrixXd(mat);

    for(double prec = 0.1; prec >= 0.00001; prec /= 10) {
        double avgTime = 0;
        x.setZero();
        long int bestTime = sor(cols, rows, 2000, 1,prec, a, b, x);
        long int worstTime = bestTime;
        double worstOmega = 1;
        double bestOmega = 1;
        VectorXd r = b - mat*x;
        VectorXd xOptim = x;
        double norm = sqrt(r.dot(r));
        double omegaOptim = 1;

        for(int i = 1; i < 4; i++) {
            x.setZero();
            long int time = sor(cols, rows, 2000, 1 + 0.25 * i,prec, a, b, x);
            r = b - mat*x;
            double newNorm = sqrt(r.dot(r));

            if(worstTime < time) {
                worstTime = time;
                worstOmega= 1 + 0.25*i;
            }
            avgTime += time / 3;
            if(bestTime > time) {
                bestTime = time;
                bestOmega = 1 + 0.25*i;

            }
            if(newNorm < norm) {
                xOptim = x;
                norm = newNorm;
                omegaOptim = 1 + 0.25*i;
            }

        }
        cout << "Precisao: " << prec <<  endl;
        cout << "melhor omega: " << omegaOptim << endl;
        cout << "Best time: " << bestTime << endl;
        cout << "Associated omega: " << bestOmega << endl;

        cout << "Worst time: " << worstTime << endl;
        cout << "Associated omega: " << worstOmega << endl;
        cout << "Average time: " << avgTime << endl;
        cout << "Gradiente para ";
        cout << "----" << endl;

    }
*/
/*
    preGradient(cols, rows, 2000, 0.01, a, b, c, x);
    cout << "----" << endl;
    cout << b - mat*x << endl << "-----" << endl;
    cout << "sor: " << endl;
    x.setZero();
    (x = sor(cols, rows, 2000, 1.25,0.01, a, b, x));
    cout << "----" << endl;
    cout << b - mat*x << endl << "-----" << endl;*/
}

void compareMatrixes(vector<string> matrixList) {
    vector<MatrixXd > matrixes(matrixList.size()-1);
    //cout << matrixes.size() << " OI" << endl;
    for(int i = 1; i < matrixList.size(); i++) {
        SparseMatrix<double, ColMajor> tmp;
        loadMarket(tmp, matrixList[i] + "/" + matrixList[i] + ".mtx");

        //Checamos se possui simetria
        bool complexo=false, vector=false;
        int sym;
        getMarketHeader(matrixList[i] + "/" + matrixList[i] + ".mtx", sym, complexo, vector);
        if (sym != 0) { // symmetric matrices, only the lower part is stored
            SparseMatrix<double, ColMajor> temp;
            temp = tmp;
            tmp = temp.selfadjointView<Lower>();
        }
        matrixes[i-1] = MatrixXd(tmp);
        //matNames[matrixes[i-1]] = matrixList[i];

        //cout << MatrixXd(matrixes[i-1]) << endl;
        //cout << "-----" << endl;
    }
    VectorXd a(5);
    a << 0, 1,2,3, 4;
    double precision = 0.00001;
    vector<normFunction> norms;
    norms.push_back(norm2);
    norms.push_back(infinityNorm);
    map<normFunction, string> normNames;

    normNames[norms[0]] = "Norma 2";
    normNames[norms[1]] = "Norma sup";
    //Percorremos as matrixes dadas
    int j = 1;
    for(vector<MatrixXd>::iterator matrixPtr = matrixes.begin(); matrixPtr != matrixes.end(); matrixPtr++) {
        MatrixXd matrix = *matrixPtr;
        int cols = matrix.cols();
        int rows = matrix.rows();
        double mean = 0;
        VectorXd x;
        x.setOnes(cols);
        VectorXd b = matrix * x;


        for(vector<normFunction>::iterator norm = norms.begin(); norm != norms.end(); norm++) {


            double bestOmega = -1;
            long int bestTime = -1;
            double bestR = -1;
            //Encontramos o melhor omega
            for(double i = 0; i < 1; i+= 0.05) {
                x.setZero();
                VectorXd r(cols);
                double omega = 1 + i;
                long int time = sor(cols, rows, omega, precision, matrix, b, x, r, *norm);
                //cout <<"Time: " << time << "i: " << i << endl;
                if(bestTime == -1 || bestTime >= time) {
                    bestTime = time;
                    bestOmega = omega;

                    VectorXd tmp = b - matrix * x;
                    bestR = (*norm)(tmp);
                }

            }
            mean += bestTime;
            cout << matrixList[j] << ": " << endl;
            cout << "Norm: " << normNames[*norm] << endl;
            cout << "Best Omega: " << bestOmega << endl;
            cout << "Best time: " << bestTime << endl;

        }
        mean /=norms.size();
        cout << "Mean SOR time: " << mean << endl;
        MatrixXd c;
        c.setIdentity(rows, cols);
        VectorXd r(cols);
        x.setZero();
        long int time = preGradient(cols, rows, precision, matrix, b, c, x, r, infinityNorm);
        cout << "Gradient: " << time << endl;
        cout << "--------" << endl;
        j++;
    }
}

double norm2(VectorXd& v) {
    return sqrt(v.dot(v));
}

double infinityNorm(VectorXd& v) {
    return v.maxCoeff();
}