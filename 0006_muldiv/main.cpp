#include <iostream>

using namespace std;

extern "C" short mulDemo1();
extern "C" short mulDemo2();
extern "C" short divDemo();

int main() {
    cout << "Eredmeny: " << mulDemo1() << endl;
    cout << "Eredmeny: " << mulDemo2() << endl;
    cout << "Eredmeny: " << divDemo() << endl;
    cout << "Ha ezt latod, akkor nem szallt el" << endl;
}
