#include <iostream>

extern "C" char cpuName[49];

extern "C" unsigned int maxExtFunct();

extern "C" void getCPUName();

int main() {
    if (maxExtFunct() >= 0x80000004) {
        getCPUName();
        std::cout << "\"" << cpuName << "\"" << std::endl;
    } else {
        std::cout << "Not supported" << std::endl;
    }
}
