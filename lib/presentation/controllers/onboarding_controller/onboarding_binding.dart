import 'package:get/get.dart';
import 'package:getx_task_manager/presentation/controllers/onboarding_controller/onboarding_controller.dart';

class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(() => OnboardingController());
  }
}
