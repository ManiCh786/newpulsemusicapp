import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:permission_handler/permission_handler.dart';

import 'Screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  void requestStoragePermission() async {
    await Permission.storage.request();
    if (await Permission.storage.isGranted) {
      Future.delayed(Duration(seconds: 3)).then((value) {
        Get.offAll(() => MainScreen());
      });
    } else {
      Get.snackbar('Storage Permissions', 'Must allow Storage Acces');
      // SystemNavigator.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    requestStoragePermission();
    return Material(
      child: Center(
        child: Image.asset(
          "assets/Image/playstore.png",
        ),
        // child: FlutterLogo(
        //   size: 100,
        // ),
      ),
    );
  }
}
