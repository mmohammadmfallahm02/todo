import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_task_manager/bindings/splash_binding.dart';
import 'package:getx_task_manager/routes/name_routes.dart';
import 'package:getx_task_manager/views/screens/onBoarding/onboarding_screen.dart';
import 'package:getx_task_manager/views/screens/splash_screen.dart';

abstract class AppRoutes {
  static String initialRoute = NameRoutes.splashScreen;
  static List<GetPage> routes = [
    GetPage(
        name: NameRoutes.splashScreen,
        page: () =>  SplashScreen(),
        binding: SplashBinding(),
        transition: Transition.zoom),
    GetPage(
        name: NameRoutes.onBoardingScreen,
        page: () => const OnboardingScreen()),
  ];
}
