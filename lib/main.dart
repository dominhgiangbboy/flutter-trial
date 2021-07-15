import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import 'features/trialdemo/bindings/splash_screen_binding.dart';
import 'features/trialdemo/routes/app_pages.dart';
import 'features/trialdemo/ui/pages/splash_screen/splash_screen.dart';
import 'features/trialdemo/ui/theme/app_theme.dart';

enum Version { lazy, wait }
// Cmd-line args/Env vars: https://stackoverflow.com/a/64686348/2301224
const String version = String.fromEnvironment('VERSION');
const Version running = version == "lazy" ? Version.lazy : Version.wait;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: SplashScreenBinding(),
      initialRoute: Routes.SPLASH_SCREEN,
      theme: light,
      defaultTransition: Transition.fadeIn,
      getPages: AppPages.pages,
      home: SplashScreen(),
    ),
  );
}
