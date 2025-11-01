void main(List<String> args) {
  var innerFun =
      outerFunction(); //after execute it return inner function reference
  print("by removing outer fun from memory");
  innerFun(); //while execute this fun..outer function(outerFunction()) not in memory.
}

/*
closure - inner function can access outer function variable 
even if outer function is not in memory.
 */
outerFunction() {
  var info = "outer function variable";
  print(info);
  return () {
    //inner function
    print(info);
  };
}
