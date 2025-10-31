void main(List<String> arguments) {
  //variable, datatype of variable, convert datatype.
  var num2 = 20;
  var name2 = "johnson";
  dynamic fname = "elango";
  final pI = 3.14;
  const radious = 2.4;
  print(num2);
  print(name2);
  print(fname);
  int num1 = 10; //declaration;
  String name = "guest";
  double money = 1000.23;
  bool check = true;
  print(num1);
  print(name);
  print(money.runtimeType);
  print(check);

  // var num3 = 100;
  double num3 = 100;
  print(num3.runtimeType);
  print(num3.toString().runtimeType);
  String num4 = "100";
  print(num4.runtimeType);
  print(int.parse(num4).runtimeType);
  print(double.parse(num4).runtimeType);
  print(num.parse(num4).runtimeType);
}

//variable- name of memory location that hold value at run time.
//int, String, double, bool, final, const, dynamic,var ..data types.
