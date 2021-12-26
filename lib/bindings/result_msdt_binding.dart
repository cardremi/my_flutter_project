import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/msdt/result.dart';

class ResultMSDTBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultMSDTController());
  }
}
