// 1. Single level inheritance 2. Multilevel inheritance 3. Multiple inheritance

// Single level inheritance

class Car {
  String? color;
  int? year;

  void start() {
    print('Car started!!!');
  }
}

class Tata extends Car {
  String? model;
  int? price;

  Tata() {}

  void showDetails() {
    print('Model: $model');
    print('Price: $price');
  }
}

void main() {
  Tata t1 = new Tata();
  t1.color = 'Black';
  t1.year = 2022;
  t1.model = 'Tata Nano';
  t1.price = 100000;

  t1.start();
  t1.showDetails();
}