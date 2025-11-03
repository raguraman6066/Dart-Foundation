import 'dart:collection';

void main(List<String> args) {
  //self balancing bst that use map inside
  SplayTreeMap sm = SplayTreeMap();
  sm.addAll({"name": "doctor", "num": 303030, "dob": 1997});
  print(sm);
}
