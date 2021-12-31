import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillana_flutter/routes/routes.dart';
import 'package:skillana_flutter/services/service_provider.dart';

class LoginController extends GetxController {
  final _isObscure = true.obs;
  final _isLoading = false.obs;

  final emailFC = TextEditingController();
  final passwordFC = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void showPassword() {
    this._isObscure.value = !this._isObscure.value;
  }

  void goToForgotPassword() {
    this.passwordFC.text = '';
    Get.toNamed(AppPages.FORGOT_PASSWORD);
  }

  void goToRegister() {
    this.passwordFC.text = '';
    Get.toNamed(AppPages.REGISTER);
  }

  onSend() async {
    // Get.focusScope?.unfocus();

    // var response = await ServiceProvider.postData('api/auth/login',
    //     data: {'email': this.emailFC.text, 'password': this.passwordFC.text});
    // print(response);
    // if (response != null) {
    Get.toNamed(AppPages.HOME);
    // }
  }

  get isObscure => this._isObscure.value;
  get isLoading => this._isLoading.value;

  set isLoading(value) => this._isLoading.value = value;
}
