import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CalculatorController extends GetxController {
  var total = 0.0;

  final firstNumberController = TextEditingController();
  final secondNumberController = TextEditingController();

  void add() {
    total = double.parse (firstNumberController.text) + double.parse(secondNumberController.text) ;
    update();
  }

  void sub() {
    total = double.parse (firstNumberController.text) - double.parse (secondNumberController.text) ;
    update();
  }

  void multiply() {
    total = double.parse(firstNumberController.text) * double.parse(secondNumberController.text) ;
    update();
  }

  void divide() {
    total = double.parse (firstNumberController.text) / double.parse (secondNumberController.text) ;
    update();
  }
}
