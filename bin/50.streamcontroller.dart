import 'dart:async';

void main(List<String> args) {
  var streamController =
      StreamController<
        dynamic
      >(); //control flow of streams.single stream listen
  var streamController2 =
      StreamController.broadcast(); //control flow of streams.multiple stream can  listen
  streamController2.stream.listen((num) => print(num));

  // streamController2.stream.listen((event) => print(event));
  streamController2.add(1);
  streamController2.sink.add(2); //add or sink.add..same
  streamController2.sink.add("hi");
  streamController2.sink.add("bye");
  streamController2.close();
}
//stream controller= handle flow of stream
//give input to the stream.using sink add or add..using controller
//listen using stream method in controller.

/**
 * 
 * 🧩 2️⃣ Broadcast Stream

➡ Can be listened by multiple listeners.



🧩 1️⃣ Single Subscription Stream

➡ Can be listened only once.
 */
