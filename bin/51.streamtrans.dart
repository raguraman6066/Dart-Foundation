import 'dart:io';

void main(List<String> args) async {
  Stream<int> stream = Stream.fromIterable([
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    90,
    90,
    100,
  ]);
  var sum = stream
      .where((number) => number % 2 == 0)
      .map((n) => n + 1)
      //.skip(5) //skip first 5 num
      .take(8) // first 5 number
      .distinct()
      .reduce((previous, element) => previous + element);
  print(await sum);
  // .listen((number) => stdout.write("$number "));
}
