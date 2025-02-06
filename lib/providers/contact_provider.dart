// providers/contact_provider.dart
import 'package:flutter/material.dart';

class ContactProvider extends ChangeNotifier {
  List<String> contacts = [];

  void addContact(String name) {
    contacts.add(name);
    notifyListeners();
  }
}