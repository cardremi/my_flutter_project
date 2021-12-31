import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/entrepreneur/result.dart';

class ResultEntrepreneurBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultEntrepreneurController());
  }
}
