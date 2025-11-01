import 'package:dartpro/inherlib.dart';

void main(List<String> args) {
  Person p = Person("guest", 55);
  Person p2 = Person.age30("hari");
  p.personInfo();
  p2.personInfo();
  // p.personInfo();
  // Employee e = Employee();
  // e.name = "karan";
  // e.age = 20;
  // e.occupation = "studying";
  // e.employeeInfo();
  Employee e = Employee("working", "jonny", 44);
  e.employeeInfo();
  // print(Employee.empno);
}
