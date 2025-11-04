//dart - single thread(main) programming. like js
//async - allows you to run without blocking other operation.
//task take time to complete - network requests(apis), file i/o operations.
//database interactions, long running computations.
//async execution flow - event loop diagram.

//future -is value - async function result.
//stream - sequence of async events over time. use for continues data from websocket or firebase type.
//handle using listen..in stream.
//isolates- achieving concurrency(parallel execution)
void main(List<String> args) async {
  print("line1"); //sync
  Future(() => print("line 2 by future")); //event queue
  await getMessage();
  print("line2"); //sync
  divide(
    20,
    2,
  ).then((value) => print(value)).catchError((err) => print("error: $err"));
  try {
    num result = await divide(30, 0);
    print(result);
  } catch (e) {
    print(e);
  }
}

//what is future- value or error - result of async task or function.

Future<void> getMessage() async {
  Future.delayed(
    Duration(seconds: 2),
    () => print("welcome to future with async/await"),
  );
}

Future<String> displayMessage() {
  return Future.delayed(Duration(seconds: 2), () => "hi, im there");
}

//future value.
Future<String> getMes() {
  return Future.value("this is return value by future");
}

//future error.
Future<num> divide(num n1, num n2) {
  if (n2 == 0) {
    return Future.error(ArgumentError("divide by zero"));
  } else {
    return Future.value(n1 ~/ n2);
  }
}
