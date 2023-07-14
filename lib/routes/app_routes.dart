import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_task_manager/routes/name_routes.dart';
import 'package:getx_task_manager/views/screens/onboarding_screen.dart';
import 'package:getx_task_manager/views/screens/splash_screen.dart';

abstract class AppRoutes {
  static String initialRoute = NameRoutes.splashScreen;
  static List<GetPage> routes = [
    GetPage(
        name: '/',
        page: () => const SplashScreen(),
        transition: Transition.zoom),
    GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
  ];
}
