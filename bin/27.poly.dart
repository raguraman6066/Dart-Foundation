//ability of object take multiple forms.
//ex- treating or assign a child-class object as  parent-class object
//poly-multi morph-form
//compile time - method overloading.
//runtime- method overriding, and object upcasing.
class Shape {
  void draw() {
    print("Drawing a shape");
  }
}

// Hence, this is runtime polymorphism —
// because the behavior is determined at runtime depending on which object (Circle or Square) is used.

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a circle");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a square");
  }
}

void main() {
  //ex- treating or assign a child-class object as  parent-class object, polymorphism
  //based on that it function will execute.
  Shape c = Circle();

  c.draw(); // "Drawing a circle" ✅

  Shape s = Square(); //object casting (upcasting)
  s.draw(); // "Drawing a square" ✅
}
