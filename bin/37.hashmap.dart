import 'dart:collection';

void main(List<String> args) {
  HashMap hm = HashMap();
  //normal map, it uses hashing, search is fast. O(1).
  hm.addAll({"1": "one", "2": "two", "3": "three"});
  print(hm);
  hm.remove("2");
  print(hm);
}
