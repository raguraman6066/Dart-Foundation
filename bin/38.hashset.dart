import 'dart:collection';

void main(List<String> args) {
  //inside implemented by hashtable
  HashSet set = HashSet();
  set.add(3);
  set.add(3);
  set.add(4);
  set.addAll({1, 2, 6});
  print(set);
}
