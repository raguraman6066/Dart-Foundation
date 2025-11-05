import 'dart:async';

void main(List<String> args) {
  var controller = StreamController();
  controller.stream.handleError((err) => print(err)).listen(
    (event) {
      print(event);
    },
    // onError: (err) => print(err)
  );
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.addError("oops!");
  controller.sink.add(3);
  controller.close();
  //listen method error..or handle error in stream controller
}

