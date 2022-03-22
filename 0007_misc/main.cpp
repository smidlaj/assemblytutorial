#include <iostream>

using namespace std;

extern "C" short shiftDemo1();

int main() {
    cout << "Eredmeny: " << shiftDemo1() << endl;
}
