import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DifficultyController extends GetxController {
  var difficulty = "Beginer".obs;

  void change(String newValue) {
    difficulty.value = newValue;
  }
}
