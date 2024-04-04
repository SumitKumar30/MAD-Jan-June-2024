import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;
  int get count => this._count;

  void increment() {
    _count = _count + 1;
    notifyListeners();
  }
}
