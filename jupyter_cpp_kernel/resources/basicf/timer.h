#include <ctime>
#include <iostream>

struct OnceTimer {
  OnceTimer(const std::string &id) : id(id), start(std::time(nullptr)) {}

  ~OnceTimer() {
    auto end = std::time(nullptr);
    std::cout << "Timer " << id << " lasts " << end - start << std::endl;
  }

  time_t start;
  std::string id;
};
