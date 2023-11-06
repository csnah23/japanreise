import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  int nudelsuppe = 0;
  int festival = 0;

  void addNudelsuppe() {
    nudelsuppe++;
    notifyListeners();
  }

  void removeNudelsuppe() {
    if (nudelsuppe > 0) {
      nudelsuppe--;
      notifyListeners();
    }
  }

  void addFestival() {
    festival++;
    notifyListeners();
  }

  void removeFestival() {
    if (festival > 0) {
      festival--;
      notifyListeners();
    }
  }
}
