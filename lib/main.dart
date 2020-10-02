import 'package:flutter/material.dart';
import 'package:food_menu/Pages/Home.dart';
import 'package:food_menu/Pages/Order.dart';
import 'Pages/Register.dart';

void main() {
  runApp(MaterialApp(initialRoute: 'register', routes: {
    'register': (context) {
      return Register();
    },
    'home': (context) {
      return Home();
    },
    'order': (context) {
      return Order();
    },
  }));
}
