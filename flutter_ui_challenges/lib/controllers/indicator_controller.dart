import 'package:get/get.dart';

class IndicatorController extends GetxController {
  var currentIndex = 0.obs;

  void updateIndex(int newIndex) {
    currentIndex.value = newIndex;
  }
}
