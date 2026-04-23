#include <iostream>
#include <vector>
class Engine {
public:
  double compute(double value) {
    if (value > 50) return value * 1.15;
    return value;
  }
};
