var name = "guest"; //global scope variable, outside method
void main(List<String> args) {
  var info = "this is local variable"; //local scope variable, inside method
  print(name);
  print(info);
  displayName(info);
}

void displayName(String info) {
  print(name);
  print(info);
  // print(info); can not access, without parameter
}
