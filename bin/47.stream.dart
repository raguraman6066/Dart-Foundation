void main(List<String> args) {
  /**
   * 
✅ StreamController → Used to create and manage a stream that can send data, errors, or completion events to listeners.
✅ StreamSubscription → Used to listen to a stream and control it (pause, resume, or cancel) while receiving data events.

   */
  Stream<int> dataStream = Stream.fromIterable([1, 2, 3, 4, 5]);
  dataStream.listen(
    (number) => print(number),
    onDone: () => print("stream completed"),
    onError: (err) => print(err),
    cancelOnError:
        false, //if error comes..stream cancel, if true..it will cancel.
  );
}

//stream is sequence of async event over time.
