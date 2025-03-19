import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int count = 0;

  /// 调用此方法更新所有观察节点
  void increment() {
    count++;
    notifyListeners();
  }
}
