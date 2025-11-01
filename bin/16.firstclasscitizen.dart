void main(List<String> args) {
  display(sum);
  var infoReturn = info();
  infoReturn();
}

/*
if a function is a first class citizen or object that should follow these things:
1. it can be assign to variable.
2. it can be pass as a argument to function
3. it can be return by functions
4. it can be pass to data structure.
 */

var display = (Function sum) {
  print("function assign to variable");
  sum(2, 3);
};
void sum(int n1, int n2) {
  print("sum= ${n1 + n2}");
}

Function info() {
  return () {
    print("lambda fun as return type");
  };
}
