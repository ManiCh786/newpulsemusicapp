import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'Screens/Screens.dart';
import 'app_theme/apptheme.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.to(() => const MainScreen());
    });
  }

  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: LightTheme.theme,
      dark: darkTheme.theme,
      initial: AdaptiveThemeMode.dark,
      builder: (light, dark) => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        defaultTransition: Transition.zoom,
      ),
    );
  }
}
