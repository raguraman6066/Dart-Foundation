typedef Calc =
    num Function(
      num num1,
      num num2,
    ); // function type alias (function signature)
void calculate(Calc cal) {
  print("sum= ${cal(1, 2)}");
}

void main(List<String> args) {
  num sum(n1, n2) {
    return (n1 + n2);
  }

  calculate(sum);
}
/*
In Dart, the typedef keyword is used to define a function type alias — that is, a custom name for a specific function signature.

It helps make your code more readable, clean, and reusable, especially when you pass functions as parameters (callbacks).
*/