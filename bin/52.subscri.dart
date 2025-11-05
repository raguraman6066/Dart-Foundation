import 'dart:async';
//using stream subscription 
//we can pause or resume or cancel the stream
void main(List<String> args) {
  Stream<int> stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);
  late StreamSubscription subscription;
  subscription = stream.listen(
    (value) {
      if (value == 5) {
        subscription.pause();
        print("pausing for 5 seconds");
        Future.delayed(Duration(seconds: 5), () {
          print("resuming stream...");
          subscription.resume();
          // subscription.cancel();
        });
      }
      print(value);
    },
    onDone: () => print("stream completed"),
    onError: (error) => print(error),
    cancelOnError: false,
  );
  //stream2.listen((event) => print(event));
}

//stream periodic
Stream<int> stream2 = Stream.periodic(
  Duration(seconds: 1),
  (computationCount) => computationCount,
).take(10);
