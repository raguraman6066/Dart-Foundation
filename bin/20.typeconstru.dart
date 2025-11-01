import 'package:dartpro/math.dart';

void main(List<String> args) {
  Sum s1 = Sum(12, 13);
  Sum s2 = Sum.named(12, 13, 5);
  s1.getSum();
  s2.getSum();
  // Area area = Area();
  Area a1 = Area(2, 3);
  print(a1.l);
}
