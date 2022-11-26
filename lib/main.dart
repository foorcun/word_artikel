import 'package:artikel/injector.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

// flutter run -d chrome --web-hostname localhost --web-port 5000 --no-sound-null-safety
void main() {
  setup();
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
