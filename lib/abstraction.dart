import 'dart:math';
//what is abstraction?
//=>hiding un-necessary information and showing only necessary information is called
//abstraction.
//*we can achieve abstraction by using
//1.abstract class.(0-100%)abstraction
//2.interface.(100%) abstraction.

abstract class Area {
  void
  getArea(); //if we dont have method body we need to use abstract word in class.
  void display() {
    //50% abstraction
    print("this is area abstract class");
  }

  void impMessage() {
    print("this is spl method");
  }
}

//these is no separate interface in dart. instead of extends implements keyword must be used.
class Circle implements Area {
  int r;
  Circle(this.r);

  @override
  void getArea() {
    print("area= ${pi * r * r}");
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class Rectangle extends Area {
  int l, b;
  Rectangle(this.l, this.b);
  @override
  void getArea() {
    print("area= ${l * b}");
  }
}
