import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool _isHovered = false;

  void setIsHovered(bool isHovered) {
    print("Hovered");
    _isHovered = isHovered;
    notifyListeners();
  }

  bool get isHovered => _isHovered;
}
