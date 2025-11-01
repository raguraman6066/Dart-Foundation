class Sum {
  int n1, n2;
  var n3 = 0; //no error later initialization.
  Sum(this.n1, this.n2);
  Sum.named(this.n1, this.n2, this.n3);
  getSum() {
    if (n3 > 0) {
      print("sum= ${n1 + n2 + n3}");
    } else {
      print("sum= ${n1 + n2}");
    }
  }
}

//const constructor.can only create with final field.
class Point {
  final x;
  final y;
  const Point(this.x, this.y); //value initialize at run time.
}

class Area {
  int l, b;
  Area._(this.l, this.b); //private constructor
  factory Area(l, b) {
    //factory constructor does not always create a new object, return existing instance;
    return Area._(2, 3);
  }
}
