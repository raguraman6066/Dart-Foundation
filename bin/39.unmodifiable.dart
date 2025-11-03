import 'dart:collection';

void main(List<String> args) {
  UnmodifiableListView data = UnmodifiableListView([1, 2, 3, 4, 5, 6]);
  print(data);
  //cant add remove
  UnmodifiableMapView data2 = UnmodifiableMapView({
    "1": "one",
    "2": "two",
    "3": "three",
  });
  print(data2);
}
