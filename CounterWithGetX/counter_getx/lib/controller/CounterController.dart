import 'package:get/get.dart';

class CounterController extends GetxController {
  var counter = 0.obs;

  void interement() {
    counter++;
  }

  void decrement() {
    if (counter >= 1) {
      counter--;
    }
  }
}
