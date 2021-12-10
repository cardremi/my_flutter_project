import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skillana_flutter/routes/routes.dart';

Future main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await PreferenceService.init();
  // await NotificationService.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: lightTheme(context),
      initialRoute: AppRoutes.INITIAL,
      getPages: AppRoutes.pages,
      defaultTransition: Transition.cupertino,
    );
  }
}
