import 'package:get/route_manager.dart';
import 'package:skillana_flutter/bindings/result_mbti_binding.dart';
import 'package:skillana_flutter/bindings/result_msdt_binding.dart';
import 'package:skillana_flutter/bindings/test_mbti_binding.dart';
import 'package:skillana_flutter/bindings/test_msdt_binding.dart';
import 'package:skillana_flutter/views/Auth/login_page.dart';
import 'package:skillana_flutter/views/assesment/index.dart';
import 'package:skillana_flutter/views/assesment/mbti/index.dart';
import 'package:skillana_flutter/views/assesment/mbti/result.dart';
import 'package:skillana_flutter/views/assesment/msdt/index.dart';
import 'package:skillana_flutter/views/assesment/msdt/result.dart';
import 'package:skillana_flutter/views/auth/forgot_password_page.dart';
import 'package:skillana_flutter/views/auth/get_started.dart';
import 'package:skillana_flutter/views/auth/register_page.dart';
import 'package:skillana_flutter/views/home/index.dart';
import 'package:skillana_flutter/views/profile/index.dart';

class AppPages {
  static const GET_STARTED = _Paths.GET_STARTED;
  static const LOGIN = _Paths.LOGIN;
  static const REGISTER = _Paths.REGISTER;
  static const FORGOT_PASSWORD = _Paths.FORGOT_PASSWORD;
  static const HOME = _Paths.HOME;
  static const PROFILE = _Paths.PROFILE;
  static const ASSESMENT_PAGE = _Paths.ASSESMENT_PAGE;
  static const ASSESMENT_MBTI = _Paths.ASSESMENT_MBTI;
  static const RESULT_MBTI = _Paths.RESULT_MBTI;
  static const ASSESMENT_MSDT = _Paths.ASSESMENT_MSDT;
  static const RESULT_MSDT = _Paths.RESULT_MSDT;
}

abstract class _Paths {
  static const GET_STARTED = '/get_started';
  static const LOGIN = '/login';
  static const REGISTER = '/register';
  static const FORGOT_PASSWORD = '/forgot_password';
  static const HOME = '/home';
  static const PROFILE = '/Profile';
  static const ASSESMENT_PAGE = '/Assesment';
  static const ASSESMENT_MBTI = '/Assesment_mbti';
  static const RESULT_MBTI = '/result_mbti';
  static const ASSESMENT_MSDT = '/Assesment_msdt';
  static const RESULT_MSDT = '/result_msdt';
}

class AppRoutes {
  static const INITIAL = AppPages.GET_STARTED;

  static final pages = [
    GetPage(name: _Paths.GET_STARTED, page: () => GetStarted()),
    GetPage(name: _Paths.LOGIN, page: () => LoginPage()),
    GetPage(name: _Paths.REGISTER, page: () => RegisterPage()),
    GetPage(name: _Paths.FORGOT_PASSWORD, page: () => ForgotPassword()),
    GetPage(name: _Paths.HOME, page: () => Home()),
    GetPage(name: _Paths.PROFILE, page: () => Profile()),
    GetPage(name: _Paths.ASSESMENT_PAGE, page: () => AssesmentPage()),
    GetPage(
        name: _Paths.ASSESMENT_MBTI,
        page: () => TestMBTI(),
        binding: MBTIBinding()),
    GetPage(
        name: _Paths.RESULT_MBTI,
        page: () => ResultMBTI(),
        binding: ResultMBTIBinding()),
    GetPage(
        name: _Paths.ASSESMENT_MSDT,
        page: () => TestMSDT(),
        binding: MSDTBinding()),
    GetPage(
        name: _Paths.RESULT_MSDT,
        page: () => ResultMSDT(),
        binding: ResultMSDTBinding())
  ];
}
