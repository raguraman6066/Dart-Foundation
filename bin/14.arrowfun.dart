void main(List<String> args) {
  display();
  sum(2, 3);
  print(mul(2));
}

//arrow function or single line function
void display() => print("arrow function");
void sum(int n1, int n2) => print("sum ${n1 + n2}");
int mul(int n1) => n1 * n1;
