void main(List<String> args) {
  const num1 = 100; //take memory at declaration time, can't change later.
  const num3 = 100; //num1 and num3 share same memory location
  const num5 = [10];
  const num6 = [10];
  final num2 = 20; //it take memory when use
  final num4 = 20; //different memory location. num2 and num4
  print(identical(num1, num3));
  print(identical(num3, num4));
  print(identical(num2, num4));
  print(
    identical(num6, num5),
  ); //in case of const true, in final it is will false
}

class Student {
  // const num1=100; const is not valid inside class, but as static is valid,
  //because once initialize the object we get memory in class..so we cant create while initialize in const inside class
  static const num2 = 10;
  final num3 = 10;
}
