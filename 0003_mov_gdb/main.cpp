#include <iostream>

using namespace std;

extern "C" int az_elet_ertelme();

int main() {
    cout << az_elet_ertelme() << endl;
}
