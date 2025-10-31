void main(List<String> args) {
  int num1 = 100;
  int num2 = 10;
  double div =
      num1 /
      num2; //this result required double type, because / is double division operator.
  int divInteger = num1 ~/ num2; //integer division operator (~)Tilde
  print(divInteger);
  print(div);
}
