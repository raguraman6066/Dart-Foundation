import 'package:dartpro/abstraction.dart';

void main(List<String> args) {
  Area r = Rectangle(3, 4);
  r.getArea();
  r.display();
  Area a = Circle(5);
  a.getArea();
  a.display();
}

//these is no separate interface in dart. instead of extends implements keyword must be used.
//what is abstraction?
//=>hiding un-necessary information and showing only necessary information is called
//abstraction.
//*we can achieve abstraction by using
//1.abstract class.(0-100%)abstraction
//2.interface.(100%) abstraction.
