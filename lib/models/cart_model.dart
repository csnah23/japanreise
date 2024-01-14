import 'package:flutter/material.dart';
import 'package:japan_reise/pages/event_pages/ceremony.dart';

class CartModel extends ChangeNotifier {
  int nudelsuppe = 0;
  int festival = 0;
  int cooking = 0;
  int ceremony = 0;

  //get ceremony => null;

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

// Aus Warenkorb entfernen

  void clearNudelsuppe() {
    nudelsuppe = 0;
    notifyListeners();
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

// Aus Warenkorb entfernen

  void clearFestival() {
    festival = 0;
    notifyListeners();
  }

  void addCooking() {
    cooking++;
    notifyListeners();
  }

  void removeCooking() {
    if (cooking > 0) {
      cooking--;
      notifyListeners();
    }
  }

// Aus Warenkorb entfernen
  void clearCooking() {
    cooking = 0;
    notifyListeners();
  }

  void addCeremony() {
    ceremony++;
    notifyListeners();
  }

  void removeCeremony() {
    if (ceremony > 0) {
      ceremony--;
      notifyListeners();
    }
  }

// Aus Warenkorb entfernen
  void clearCeremony() {
    ceremony = 0;
    notifyListeners();
  }

  int get totalItems => nudelsuppe + festival + cooking + ceremony;
}
