void main(List<String> args) {
  int num1 = 10;
  int num2 = 20;
  int num3 = 30;
  if (num1 > num2 && num1 > num3) {
    print("num1 is greater");
  } else if (num2 > num3) {
    print("num2 is greater");
  } else {
    print("num3 is greater");
  }
  (num1 > num2)
      ? print("num1 is big")
      : print("num2 is big"); //ternary operator
  int day = 5;
  switch (day) {
    case 1:
      print("monday");
    case 2:
      print("tuesday");
    case 3:
      print("wednesday");
    case 4:
      print("thursday");
    default:
      print("no day");
  }
}
