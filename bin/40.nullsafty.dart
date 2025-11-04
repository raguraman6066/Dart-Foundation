void main(List<String> args) {
  //nullable type(?)
  //null-aware operator(!)
  //default value operator(??)
  //assign if null operator(??=)
  //late keyword(late)
  //null aware access(?.)
  String? num; //non-nullable local variable must be assigned before it use.
  // nullable type variable.

  print(num?.length); //
  // print(num!.length); //not null assertion
  print(num ??= "guest");
  late int rno; //before use we initialize it.
  rno = 89;
  print(rno);
}
