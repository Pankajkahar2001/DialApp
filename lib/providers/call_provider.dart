import 'package:flutter/material.dart';

class CallProvider extends ChangeNotifier {
  List<String> callLogs = [];

  void addCall(String number) {
    callLogs.insert(0, number);
    notifyListeners();
  }
}