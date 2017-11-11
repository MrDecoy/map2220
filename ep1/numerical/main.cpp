

#include "main.h"



int main(int argc, char *argv[]) {

    string name(argv[1]), path;

    int plotSize = 10000;
    int pointsSize = 100;
    double upperSize, lowerSize, a, b;
    vector<double> points, pointsUp,pointsDown,
                   plotUp,plotDown, plotPoints;



    //Reads file
    ifstream upper("./../arrays/"+ name +"/up.txt", std::ios::in);
    ifstream lower("./../arrays/"+ name +"/low.txt", std::ios::in);

    if(!upper || !lower)
    {
        cout << "Unable to open file datafile.txt";
        exit(1);   // call system to stop
    }

    //Reads sizes
    upper >> upperSize;
    lower >> lowerSize;

    //Create a coordinate vector
    CoordList up = CoordList(upperSize);
    CoordList low = CoordList(lowerSize);

    //Reads initial points
    int j = 0;
    while(upper >> a >> b) {
        up.addCoord(Coord(a,b));
        j++;
    }
    j = 0;
    while(lower >> a >> b) {

        low.addCoord(Coord(a,b));
        j++;
    }

    up.makePairs();
    low.makePairs();

    //Creates splines

    tk::spline upSpline, downSpline;
    upSpline.set_points(up.xVector, up.yVector);
    downSpline.set_points(low.xVector, low.yVector);

    points = genPoints(pointsSize);
    plotPoints = genPoints(plotSize);
    sort(points.begin(), points.end());
    sort(plotPoints.begin(), plotPoints.end());

    for(int i = 0; i < pointsSize; i++) {
        pointsUp.push_back(upSpline(points[i]));
        pointsDown.push_back(downSpline(points[i]));
    }
    //Plots the spline

    for(int i = 0; i < plotSize; i++) {

        plotUp.push_back(upSpline(plotPoints[i]));
        plotDown.push_back(downSpline(plotPoints[i]));
    }

    path = "./../splinePoints/" + name + "/DottedSpline.txt";
    plotSpline(pointsUp, pointsDown, points, path, name + "/DottedSpline", pointsSize);

    path = "./../splinePoints/" + name + "/ContinuousSpline.txt";
    plotSpline(plotUp, plotDown, plotPoints, path, name + "/ContinuousSpline", plotSize);
    //cout << "oi";
    //Creates height function and plots it
    SplineDiff height(points, pointsUp, pointsDown, pointsSize);
    path = "./../splinePoints/" + name + "/DottedHeight.txt";
    height.plotHeight(points, path, name + "/DottedHeight", pointsSize);

    SplineDiff heightPlot(plotPoints, plotUp, plotDown, plotSize);
    path = "./../splinePoints/" + name + "/ContinuousHeight.txt";
    heightPlot.plotHeight(plotPoints, path,  name + "/ContinuousHeight", plotSize);

    //Creates derivate of the difference and plots it
    path = "./../splinePoints/" + name + "/Derivate.txt";
    height.getDerivate(upSpline, downSpline, path, name + "/Derivate");
    return 0;

}




double d2r(double d) {
    return d / 180.0 *  M_PI;
}
double transformPoint(double d) {

    return (1- cos((d)))/2;
}

void plotSpline(vector<double> up, vector<double> down, vector<double> points, string path, string name,
                 int pointsSize) {
    ofstream outputFile;
    outputFile.open("./../splinePoints/" + name + ".txt");
    outputFile << "X, " << " Y" << endl;
    for(int i = 0; i < pointsSize; i++) {
        outputFile << points[i] << ", " << up[i] << endl;
        outputFile << points[i] << ", " << down[i] << endl;
    }
    stringstream p;
    outputFile.close();

    p << string("Rscript ./../scripts/plot.R ") << string(path) << " " << name;
    //cout << p.str() << endl;
    system(p.str().c_str());
}
vector<double> genPoints(int pointsSize) {
    random_device rd;
    mt19937 e2(rd());
    uniform_real_distribution<> dist(0, M_PI);
    vector<double> pointsX(pointsSize);

    for (int n = 0; n < pointsSize; ++n) {
        pointsX[n] = transformPoint(dist(e2));

    }
    return pointsX;
}


void plot(vector<double> x, vector<double> y, string path, string name, int n) {
    ofstream outputFile;
    outputFile.open(path);
    outputFile << "X, " << " Y" << endl;
    for(int i = 0; i < n; i++) {
        //cout << x[i] <<" " <<  y[i] << endl;
        outputFile << x[i] << ", " << y[i] << endl;
    }
    outputFile.close();
    stringstream p;
    p << string("Rscript ./../scripts/plot.R ") << string(path) << " " << name;
    system(p.str().c_str());

}