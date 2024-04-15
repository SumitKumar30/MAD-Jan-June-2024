import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:third_app/model/user.dart';

class UserNotifier extends ChangeNotifier {
  List<User> _userList = [];

  UnmodifiableListView<User> get userList => UnmodifiableListView(_userList);

  addUser(User user) {
    _userList.add(user);
    notifyListeners();
  }

  deleteUser(index) {
    _userList.removeWhere((_user) => _user.name == userList[index].name);
    notifyListeners();
  }
}
