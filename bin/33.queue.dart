import 'dart:collection';

void main(List<String> args) {
  Queue q = Queue(); //fifo
  q.addLast(12);
  q.addLast(13);
  q.addLast(14);
  q.addFirst(11);
  print(q);
  q.removeLast();
  print(q);
}
