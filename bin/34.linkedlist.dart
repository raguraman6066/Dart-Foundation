import 'dart:collection';

void main(List<String> args) {
  LinkedList<LLValue> studentLL = LinkedList();
  studentLL.add(LLValue("student1"));
  studentLL.add(LLValue("student2"));
  studentLL.add(LLValue("student3"));
  studentLL.addFirst(LLValue("student0"));
  print(studentLL);
}

base class LLValue extends LinkedListEntry<LLValue> {
  String sName;
  LLValue(this.sName);

  @override
  String toString() {
    return sName.toString();
  }
}
