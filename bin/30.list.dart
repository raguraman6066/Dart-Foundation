void main(List<String> args) {
  //list or array
  List data = [12, 13, 14, 15, "demo"];
  //for in
  for (var value in data) {
    print(value);
  }
  //for each
  data.forEach((element) {
    print(element);
  });
  //other way
  List list1 = List.filled(5, 1); //fixed ..we cant add element.
  //we can change
  list1[1] = 2;
  print(list1);
  List list2 = List.from([23, 24, 25]);
  list2.addAll([26, 27]);
  print(list2);
  //remove element from list
  list2.remove(25);//element.
  print(list2);
}
