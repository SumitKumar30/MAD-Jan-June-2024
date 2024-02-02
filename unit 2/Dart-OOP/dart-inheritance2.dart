// Multilevel inheritance

class A {}

class B extends A {}

class C extends B {}

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

class TataSafari extends Tata {
  String? engineName;
  String? engineType;
  String? transmission;
  int? alloySize;

  void showEngineDetails() {
    print('Engine name: $engineName');
    print('Engine type: $engineType');
  }

  void showTransmissionDetails() {
    print('Transmission type: $transmission');
  }

  void showAlloyDetails() {
    print('Alloy size: $alloySize');
  }
}

void main() {
  Tata t = new Tata();
  t.model = 'Tata Safari';
  t.price = 1500000;
  t.showDetails();
  TataSafari ts = new TataSafari();
  ts.color = 'Balck';
  ts.year = 2023;
  ts.engineName = 'BS6 4 cylinder';
  ts.engineType = 'Diesel';
  ts.transmission = 'BS6';
  ts.alloySize = 16;

  ts.start();
  //ts.showDetails();
  ts.showEngineDetails();
  ts.showTransmissionDetails();
  ts.showAlloyDetails();
}