import 'package:get/get.dart';
import 'package:getx_task_manager/presentation/controllers/spalsh_controller/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}
