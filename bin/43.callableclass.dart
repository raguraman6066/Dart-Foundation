void main(List<String> args) {
  Message m = Message();
  m.display();
  m();
}

class Message {
  void display() {
    print("this is method from message class");
  }

  //override when obj call as method
  void call() {
    print("welcome to callable class message");
  }
}
