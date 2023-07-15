import 'package:get/get.dart';
import 'package:getx_task_manager/routes/name_routes.dart';

class SplashController extends GetxController {
  void navigateToOnBoarding() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed(NameRoutes.onBoardingScreen);
    });
  }

  @override
  void onInit() {
    navigateToOnBoarding();
    super.onInit();
  }
}
