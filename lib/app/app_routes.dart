import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_task_manager/app/name_routes.dart';
import 'package:getx_task_manager/presentation/controllers/onboarding_controller/onboarding_binding.dart';
import 'package:getx_task_manager/presentation/controllers/spalsh_controller/splash_binding.dart';
import 'package:getx_task_manager/presentation/pages/onBoarding/onBoarding_screen.dart';
import 'package:getx_task_manager/presentation/pages/splash_screen.dart';

abstract class AppRoutes {
  static String initialRoute = NameRoutes.splashScreen;
  static List<GetPage> routes = [
    GetPage(
        name: NameRoutes.splashScreen,
        page: () => SplashScreen(),
        binding: SplashBinding(),
        transition: Transition.zoom),
    GetPage(
        name: NameRoutes.onBoardingScreen,
        page: () => const OnboardingScreen(),
        binding: OnBoardingBinding()),
  ];
}
