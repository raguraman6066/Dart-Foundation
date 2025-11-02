class Person {
  void display() {
    print("this is person class");
  }
}

class Employee extends Person {
  @override
  void display() {
    print("this is display in employee class");
  }
}
