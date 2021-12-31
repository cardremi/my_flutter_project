import 'package:get/get.dart';
import 'package:skillana_flutter/controllers/assesment/entrepreneur/entrepreneur.dart';

class EntrepreneurBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EntrepreneurController());
  }
}
