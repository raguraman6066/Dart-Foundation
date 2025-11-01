void main(List<String> args) {
  greeting("john", 40);
  greeting1("harray", 50);
  greeting2(name: "demo", age: 44);
  greeting3(name: "tharun", age: 55);
  greeting4("arun");
}

//fun with required parameters
void greeting(var name, var age) {
  print("hello $name and your age is $age");
}

//fun with optional(positional)
void greeting1(var name, [var age, var address]) {
  print("name= $name age= $age address= $address");
}

//fun with named(optional) parameter
void greeting2({var name, var age}) {
  print("name= $name age= $age");
}

//fun with named(required) parameter
void greeting3({required var name, required var age}) {
  print("name= $name age= $age");
}

//fun with default parameter
void greeting4([var name = "vani", var age = 80]) {
  print("name= $name age= $age");
}

/*1.required(positional) 
2.optional
   1.optional(positional)
   2.named(optional)
   3.named(required)
   4.default.*/
