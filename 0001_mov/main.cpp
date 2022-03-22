#include <iostream>

using namespace std;

extern "C" int az_elet_ertelme();

int main()
{
    cout << "Az elet ertelme: " << az_elet_ertelme() << endl;
    return 0;
}

