import 'dart:isolate';

void main(List<String> args) async {
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(sendMessage, receivePort.sendPort);
  receivePort.listen((message) {
    print(message);
    if (message.toString().isEmpty) {
      print("closing isolates");
      receivePort.close();
    }
  });
}

void sendMessage(SendPort msg) async {
  for (int i = 0; i < 5; i++) {
    msg.send("message: $i");
    await Future.delayed(Duration(seconds: 1));
  }
  msg.send("");
}
