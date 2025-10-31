import 'dart:io';

void main(List<String> args) {
  int num1 = 200;
  int num2 = 400;
  //string interpolation
  print("sum of two number= ${num1 + num2}");
  stdout.write("sum of two number= ");
  stdout.writeln(num1 + num2);
}
