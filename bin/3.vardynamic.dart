void main(List<String> args) {
  var num1 = 100;
  // num1 = "100"; change the value, but can not change type
  var fname = "dr";
  var lname = "joe";
  var check = true;
  dynamic num2; //can change the type later.
  num2 = "200";
  print(num1.runtimeType);
  print(num2.runtimeType);
  //if var not initialize when declaration, it work as dynamic type.
  var num3;
  num3 = 1000;
  print(num3.runtimeType);
  num3 = "demo";
  print(num3.runtimeType);
}
