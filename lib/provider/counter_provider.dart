import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _nilai = 0;
  int get hasil => _nilai;

  kurangin() {
    _nilai = _nilai - 1;
    notifyListeners();
  }

  tambahin() {
    _nilai = _nilai + 1;
    notifyListeners();
  }
}
