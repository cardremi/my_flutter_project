import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/mbti/mbti.dart';

class MBTIBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MBTIController());
  }
}
