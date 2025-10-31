void main(List<String> args) {
  //type test operator - is, is!, as
  var num1 = "10";
  if (num1 is! int) {
    print("this  not int");
  } else {
    print("this is int");
  }
  dynamic num2 = "12345";
  String value = num2 as String;
  print(value);
}
