import 'package:flutter/material.dart';

class K extends ChangeNotifier {
  String k = 'text';

  void TextChanged(String text) {
    k = text;
    notifyListeners();
  }
}
