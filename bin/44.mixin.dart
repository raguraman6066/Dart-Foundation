void main(List<String> args) {
  Calculator c = Calculator();
  c.calSub(2, 6);
  c.calSum(2, 6);
  c.info();
}

mixin Sum {
  void calSum(num n1, num n2) {
    print("sum= ${n1 + n2}");
  }
}
mixin Sub {
  void calSub(num n1, num n2) {
    print("sub= ${n1 - n2}");
  }
}

class Calculator with Sub, Sum {
  void info() {
    print("this is calculator class");
  }
}
/*
class Printer {
  void printDoc() {}
}

class Scanner {
  void scanDoc() {}
}

class SmartDevice implements Printer, Scanner {
  @override
  void printDoc() {
    print("Printing document...");
  }

  @override
  void scanDoc() {
    print("Scanning document...");
  }
}

mixin Engine {
  void startEngine() {
    print("Engine started");
  }
}

mixin MusicSystem {
  void playMusic() {
    print("Playing music");
  }
}

class Car with Engine, MusicSystem {
  void drive() {
    print("Car is driving");
  }
}

void main() {
  Car car = Car();
  car.startEngine(); // from Engine
  car.playMusic();   // from MusicSystem
  car.drive();       // from Car
}
Mixins let you reuse code from multiple classes without inheritance.
Dart does not support multiple inheritance directly — meaning a class cannot extend from more than one class.
✅ But you can achieve Multiple Inheritance using mixins or implements*/