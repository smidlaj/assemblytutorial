#include <iostream>

using namespace std;

extern "C" int addDemo();
extern "C" unsigned long long addLong();

int main() {
    cout << "Eredmeny: " << addDemo() << endl;
    cout << "Osszeg: " << addLong() << endl;
}
