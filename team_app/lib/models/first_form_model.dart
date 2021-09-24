import 'package:flutter/foundation.dart';

class FirstFormModel extends ChangeNotifier {
  String? _userName;
  String? _lastName;
  int? _age;

  get userName => this._userName;

  set userName(value) {
    this._userName = value;
    notifyListeners();
  }

  get password => this._lastName;

  set password(value) {
    this._lastName = value;
    notifyListeners();
  }

  get age => this._age;

  set age(value) {
    this._age = value;
    notifyListeners();
  }
}
