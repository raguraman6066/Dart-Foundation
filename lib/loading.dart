//method overloading officially not supporting in dart.
//create method same name, different number of arguments in same class.
class Sum {
  void sum(var n1, n2, [var n3 = 0, n4 = 0]) {
    print("sum= ${n1 + n2 + n3 + n4}");
  }

  // void sum(var n1, n2, n3) {
  //   print("sum= ${n1 + n2 + n3}");
  // }
}
