import 'dart:io';

void main(List<String> args) {
  int num1;
  dynamic num2;
  print("enter num1: ");
  num1 = int.parse(stdin.readLineSync().toString());
  print("enter num2: ");
  num2 = num.parse(stdin.readLineSync().toString());
  print("sum of two numbers = ${num1 + num2}");
}
