import 'package:flutter/material.dart';
import 'Pages/Register.dart';

void main() {
  runApp(MaterialApp(initialRoute: 'register', routes: {
    'register': (context) {
      return Register();
    },
    'home': (context) {
      return Container();
    },
    'order': (context) {
      return Container();
    },
  }));
}
