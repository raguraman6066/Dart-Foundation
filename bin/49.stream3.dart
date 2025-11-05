void main(List<String> args) {
  // getNumber(10).listen((number) => print(number));
  getStreamByFuture().listen((num) => print(num));
}

Stream<int> getNumber1to5() async* {
  for (int i = 0; i <= 5; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getNumber(int max) async* {
  yield* getNumber1to5(); //marge other yield inside other stream.
  for (int i = 6; i <= max; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
  }
}

Stream<int> getStreamByFuture() {
  return Stream.fromFutures([
    Future.delayed(Duration(seconds: 1), () => 1),
    Future.delayed(Duration(seconds: 2), () => 2),
    Future.delayed(Duration(seconds: 3), () => 3),
  ]);
}
