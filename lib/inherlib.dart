/*

1. inheritance - creating new class(sub or child) by using existing class(super or parent)..or derive the property from parent to child.
2. all the member of super class is member of sub class by default.
3. reusable

 */

class Person {
  String name;
  int age;
  Person(this.name, this.age);
  Person.age30(name) : this(name, 30); //this is refer default constructor
  //person age30 constructor only assign to this(name,30)
  void personInfo() {
    print("name= $name age= $age");
  }
}

class Employee extends Person {
  String? occupation;
  static int empno = 111;
  // Employee(String occupation, String name, int age) {
  //   this.occupation = occupation;
  //   super.name = name;
  //   super.age = age;
  // }
  Employee(this.occupation, String name, int age) : super(name, age);
  //employee constructor get and assign the value to super constructor.
  void employeeInfo() {
    super.personInfo();
    print("name= $name age= $age occupation= $occupation");
  }
}
