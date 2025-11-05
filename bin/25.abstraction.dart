import 'package:dartpro/abstraction.dart';

void main(List<String> args) {
  Area r = Rectangle(3, 4);
  r.getArea();
  r.display();
  Area a = Circle(5);
  a.getArea();
  a.display();
}

/*
interface.- no implementation in interface methods. only undefined methods.so 100% abstraction.
but in abstract class- some methods are implemented and some are undefined(without body)
**all this concept for only abstract or interface class only *** not based on sub classes.
class PaymentGateway {
  void pay();
  void refund();
}

class GooglePay implements PaymentGateway {
  @override
  void pay() => print("GooglePay payment done");

  @override
  void refund() => print("GooglePay refund done");
}


 */

//these is no separate interface in dart. instead of extends implements keyword must be used.
//what is abstraction?
//=>hiding un-necessary information and showing only necessary information is called
//abstraction.
//*we can achieve abstraction by using
//1.abstract class.(0-100%)abstraction
//2.interface.(100%) abstraction.

//abstract class only one class can be extends
//interface multiple interfaces can be implement
