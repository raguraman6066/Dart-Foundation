import 'package:async/async.dart';

void main(List<String> args) {
  // var group = StreamGroup<int>();
  Stream<int> stream1 = Stream.fromIterable([1, 2, 3, 4, 5]);
  Stream<int> stream2 = Stream.fromIterable([6, 7, 8, 9, 10]);
  // group.add(stream1);
  // group.add(stream2);
  // group.stream.listen((event) => print(event));
  Stream fstream = StreamGroup.merge([stream1, stream2]);
  fstream.listen((event) => print(event));
}
