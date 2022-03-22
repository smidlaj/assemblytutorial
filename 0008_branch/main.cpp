#include <iostream>

using namespace std;

extern "C" void demo();
extern "C" int branchDemo1();
extern "C" int branchDemo2();
extern "C" int branchDemo3();

int main() {
    demo();
    cout << "Eredmeny: " << branchDemo1() << endl;
    cout << "Eredmeny: " << branchDemo2() << endl;
    cout << "Eredmeny: " << branchDemo3() << endl;
}
