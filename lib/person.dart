class Person {
  //instance variable-need initialization.
  String? name;
  int? age;
  String _address = "delhi"; //private instance variable
  //instance method
  void displayInfo() {
    String localVar = "arul"; //local variable,inside method
    print("name= $name and age= $age");
    _displayPrivateInfo();
    void localMethod() {
      print("local method $localVar");
    }

    //localMethod();
  }

  void _displayPrivateInfo() {
    //private instance method
    print("address= $_address");
  }

  //constructor default- special method as class name.use to initialize variable of class.
  //does not return any value.
  // Person() {
  //   _address = "london";
  // }

  //parameterized constructor
  // Person(name, age, address) {
  //   this.name = name;
  //   this.age = age;
  //   _address = address;
  // }
  Person(this.name, this.age, this._address); //shortcut to initialize var
}
