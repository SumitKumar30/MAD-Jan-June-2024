// Multiple inheritance --> Not allowed in Dart
class A {}

class B {}

//  you can't extend multiple classes at the same time
// class C extends A, B{}

// Abstract class & Interfaces

// Abstact implementation --> declare methods

// Concrete implementation --> method implementation

// 1. Abstact class -> "abstract"

abstract class Shape {
  void area();
  void perimeter();

  // void printShape() {
  //   print('Printing the Shape class...');
  // }
  // concrete method
  void printShape() => print('Printing the Shape class...');
}

// interface in dart -> only contain abstract methods
abstract class Resize {
  void resize();
}

// I concrete class
class Triangle extends Shape implements Resize {
  int? dim1;
  int? dim2;

  Triangle({required this.dim1, required this.dim2});

  @override
  void area() {
    print('Area of triangle: ${0.5 * dim1! * dim2!}');
  }

  @override
  void perimeter() {
    print('Perimeter of triangle is ${(2 * dim1!) + dim2!}');
  }

  @override
  void resize() {
    print('Resize the Triangle!!!');
  }

  // functionality --> area & perimeter

}

// II concrete class
class Circle extends Shape {
  double? rad;
  static const double PI = 3.14;

  Circle({required this.rad});

  @override
  void area() {
    print('Area of circle is: ${PI * (rad! * rad!)}');
  }

  @override
  void perimeter() {
    print('Perimeter of circle is: ${2 * PI * rad!}');
  }
}

// driver function

void main() {
  Triangle t = new Triangle(dim1: 10, dim2: 20);
  t.area();
  t.perimeter();
  // t.printShape();
  t.resize();

  Circle c = Circle(rad: 8.5);
  c.area();
  c.perimeter();
}