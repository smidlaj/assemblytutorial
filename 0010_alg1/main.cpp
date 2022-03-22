#include <iostream>

using namespace std;

extern "C" int euclidean();

int main() {
	cout << "Az eredmeny: " << euclidean() << endl;
}
