import 'package:get/route_manager.dart';
import 'package:skillana_flutter/views/Auth/login_page.dart';
import 'package:skillana_flutter/views/auth/forgot_password_page.dart';
import 'package:skillana_flutter/views/auth/get_started.dart';
import 'package:skillana_flutter/views/auth/register_page.dart';

class AppPages {
  static const GET_STARTED = _Paths.GET_STARTED;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
}

abstract class _Paths {
  static const GET_STARTED = '/get_started';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const FORGOT_PASSWORD = '/forgot_password';
}

class AppRoutes {
  static const INITIAL = AppPages.GET_STARTED;

  static final pages = [
    GetPage(name: _Paths.GET_STARTED, page: () => GetStarted()),
    GetPage(name: _Paths.LOGIN, page: () => LoginPage()),
    GetPage(name: _Paths.REGISTER, page: () => RegisterPage()),
    GetPage(name: _Paths.FORGOT_PASSWORD, page: () => ForgotPassword()),
  ];
}
