#include <ifstream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;


int main(int argc, char *argv[]) {
    if (argc > 1) {
        string name(argv[1]);
    }
    else exit(1);


    ifstream upper;
    ifstream lower;
    upper.open("./../arrays/" + name + "/up.txt");
    lower.open("./../arrays/" + name + "/low.txt");
    if (!upper || !lower) {
        cerr << "Unable to open file" + name + ".txt";
        exit(1);   // call system to stop
    }


}