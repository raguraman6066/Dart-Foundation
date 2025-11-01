import 'package:dartpro/person.dart';

//class is a template, use to creating object.it have properties and behaviors.
//using class we can create any number of objects.
//object is an instance of the class.
void main(List<String> args) {
  /* Person p1 = Person();
  p1.name = "guest";
  p1.age = 55;

  p1.displayInfo();
  Person p2 = Person();
  p2.name = "demo";
  p2.age = 35;
  p2.displayInfo();*/
  //this is not good way to initialize the value..use constructor to initialize.
  Person p1 = Person("benny", 55, "usa");
  p1.displayInfo();
}
