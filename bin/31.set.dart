void main(List<String> args) {
  Set s1 = {23, 24, 28, 27, 26, 27};
  //only remove duplicates
  s1.add(20);
  s1.addAll({30, 31});
  s1.remove(27);
  print(s1.contains(30));
  print(s1);
}
