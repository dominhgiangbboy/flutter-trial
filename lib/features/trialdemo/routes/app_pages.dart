import 'package:trialdemo/features/trialdemo/bindings/detailed_screen_binding.dart';
import 'package:trialdemo/features/trialdemo/bindings/home_binding.dart';
import 'package:trialdemo/features/trialdemo/bindings/new_feed_screen_binding.dart';
import 'package:trialdemo/features/trialdemo/ui/pages/detailed_screen/detailed_screen.dart';
import 'package:trialdemo/features/trialdemo/ui/pages/new_feed_screen/new_feed_screen.dart';

import '../bindings/splash_screen_binding.dart';
import '../ui/pages/splash_screen/splash_screen.dart';

import '../ui/pages/home/home_page.dart';
import 'package:get/get.dart';

part './app_routes.dart';

class AppPages {
  static final pages = [
    // Home route
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
    // Splash Screen
    GetPage(
      name: Routes.SPLASH_SCREEN,
      page: () => SplashScreen(),
      binding: SplashScreenBinding(),
    ),
    // New Feed
    GetPage(
      name: Routes.NEW_FEED_SCREEN,
      page: () => NewFeedScreen(),
      binding: NewFeedScreenBinding(),
    ),
    // New Feed
    GetPage(
      name: Routes.DETAILED_SCREEN,
      page: () => DetailedScreen(),
      binding: DetailedScreenBinding(),
    ),
    // Login Screen
  ];
}
