void main(List<String> args) {
  display();
  displayName("buddy");
  print(sum());
  print(subtract(4));
}

//4 types
//1.no args and no return type
void display() {
  print("welcome to fun1");
}

//2.with args and no return type
void displayName(name) {
  print("hi ${name}");
}

//3.no args with return type
int sum() {
  return 5;
}

//4.with args with return type
int subtract(num) {
  return num - 1;
}
