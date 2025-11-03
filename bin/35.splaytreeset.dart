import 'dart:collection';

void main(List<String> args) {
  //it is self balancing BST that use set, it remove duplicate. sort all information.
  SplayTreeSet values = SplayTreeSet();
  values.add(20);
  values.addAll({30, 40, 90, 70, 50, 60, 20});
  print(values);
  
}
