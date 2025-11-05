void main(List<String> args) async {
  //(10).listen((value) => print(value));

  await for (int n in getNumbers(5)) {
    print(n);
  }
}

Stream<int> getNumbers(int max) async* {
  //future=>async,Stream=>async*
  for (int i = 0; i < max; i++) {
    yield i; //return
    await Future.delayed(Duration(seconds: 1));
  }
}
