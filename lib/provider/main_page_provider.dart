import 'package:flutter/cupertino.dart';

class MainPageProvider extends ChangeNotifier {
  int num = 0;
  void addNum() {
    num = num + 1;
    notifyListeners();
  }
}
