import 'package:dartpro/loading.dart';

//method overloading officially not supporting in dart.
//create method same name, different number of arguments in same class.
void main(List<String> args) {
  Sum sum = Sum();
  sum.sum(3, 4, 3);
}
