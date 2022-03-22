#include <iostream>

using namespace std;

extern "C" int loopDemo1();
extern "C" int loopDemo2();
extern "C" int loopDemo3();

int main() {
    cout << "Eredmeny: " << loopDemo1() << endl;
    cout << "Eredmeny: " << loopDemo2() << endl;
    cout << "Eredmeny: " << loopDemo3() << endl;
}
