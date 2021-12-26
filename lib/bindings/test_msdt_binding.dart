import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/msdt/msdt.dart';

class MSDTBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MSDTController());
  }
}
