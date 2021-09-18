import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../constant.dart';

class ColorProvider extends ChangeNotifier {
  Color color1 = color[0];
  Color? color2 = color[1];
  changeColor() {
    color1 = color[Random().nextInt(color.length)];
    color2 = color[Random().nextInt(color.length)];
    notifyListeners();
  }

  resetColor() {
    color1 = color[0];
    color2 = color[1];
    notifyListeners();
  }
}
