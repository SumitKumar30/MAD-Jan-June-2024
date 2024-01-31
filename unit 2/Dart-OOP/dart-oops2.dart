// ignore_for_file: public_member_api_docs, sort_constructors_first
// Constructors in Dart
void main(List<String> args) {
  Employee obj = new Employee();
  obj.id = 101;
  obj.name = 'Amit';
  obj.address = 'Gurugram';
  obj.email = 'amit@ncu.edu';
  obj.salary = 10000000.00;
  obj.phone = '123478899';

  print('Employee Details: $obj');

  print('Employee id: ${obj.id}'); // internally calls the getter of id field

  Employee obj2 = new Employee.EmpCustom(
      102, 'Arjun', 'Delhi', 500000.00, '1235467987', 'arjun@ncu.edu');

  print('Employee 2 details: ${obj2.toString()}');

  Employee obj3 =
      new Employee.EmpCustom3(105, 'xyz@ncuindia.edu', address: 'New York');

  Employee obj4 = new Employee.EmpCustom4(110, 'Gurugram', 1000.00, 'John');
}

class Employee {
  // instance variables
  int? _id;
  String? _name;
  double? _salary;
  String? _email;
  String? _address;
  String? _phone;

  get id => this._id;

  set id(value) => this._id = value;

  get name => this._name;

  set name(value) => this._name = value;

  get salary => this._salary;

  set salary(value) => this._salary = value;

  get email => this._email;

  set email(value) => this._email = value;

  get address => this._address;

  set address(value) => this._address = value;

  get phone => this._phone;

  set phone(value) => this._phone = value;

  // 1. default constructor || No-arg constructor 2. Parameterized constructor

  Employee() {
    print('This employee object is initialized!!');
  }

  // Employee(this._address, this._email);

  // Named constructor - with block body
  Employee.EmpCustom(int id, String name, String address, double salary,
      String phone, String email) {
    this._id = id;
    this._name = name;
    this._address = address;
    this._salary = salary;
    this._email = email;
    this._phone = phone;
  }

  // Another named constructor - without block body
  Employee.EmpCustom2(this._id, this._name, this._address, this._email,
      this._phone, this._salary);

  // Optional arguments: 1. Named optional args 2. positional optional args

  Employee.EmpCustom3(this._id, this._email, {String? name, String? address});

  Employee.EmpCustom4(this._id, this._address,
      [double? salary, String? name, String? phone]);

  // Optional named parameters with default values
  Employee.EmpCustom5({String? name, int? id}): this._name = name ?? 'Bob', this._id = id ?? 123;

  @override
  String toString() {
    return 'Employee(_id: $_id, _name: $_name, _salary: $_salary, _email: $_email, _address: $_address, _phone: $_phone)';
  }
}
