//
// Created by Andre C Perello on 28/09/17.
//

#include "SplineDiff.h"

SplineDiff::SplineDiff(vector<double> pointsX, vector<double> upVector,
                       vector<double> downVector, int n){
    //Criacao da spline interpoladora da funcao altura

    this->points = pointsX;
    for(int i = 0; i < n; i++) {
        dif.push_back(upVector[i] - downVector[i]);

    }
    this->n = n;

    sHeight.set_points(pointsX, dif);
}

//We will use 3 point formulas
void SplineDiff::getDerivate(tk::spline u, tk::spline d,string path, string name) {
    vector<double> points, pointsY;
    int n = 100000;
    double h = 0.00001;
    points.push_back(0);
    pointsY.push_back(sHeight(0));
    for(int i= 1; i < n; i++) {
        points.push_back(points[i-1] + h);
        pointsY.push_back(sHeight(points[i]));
        //cout << points[i] << endl;
    }
    derivate.push_back(0);
    for(int i = 1; i < n - 1; ++i) {
        derivate.push_back((pointsY[i+1] - pointsY[i-1])/(2*(points[i+1] - points[i-1])));

        if(derivate[i] < 0 && derivate[i-1] > 0) {
            cout << "Distancia da espessura maxima: " << points[i] << endl;
            cout << "Espessura maxima: "<< pointsY[i] << endl;

            }
            //cout << interval[i] << endl;

    }

    plot(points, derivate, path, name, n);

}

void SplineDiff::plotHeight(vector<double> points, string path, string name, int plotSize) {

    plot(points, dif, path, name, plotSize);

}