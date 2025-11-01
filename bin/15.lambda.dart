void main(List<String> args) {
  display();
  print(multiply());
}

//anonymous or lambda function
var display = () {
  print("lambda or anonymous function in dart");
};
Function multiply = () {
  return 5;
};
