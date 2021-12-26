import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:skillana_flutter/routes/routes.dart';
// import 'package:skillana_flutter/services/service_provider.dart';

class ProfileController extends GetxController {
  final _isOnChangePic = (1.0).obs;

  void onPressCondition() {
    this._isOnChangePic.value = 0.5;
  }

  get isOnChangePic => this._isOnChangePic.value;
}
