import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/mbti/result.dart';

class ResultMBTIBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResultMBTIController());
  }
}
