import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_task_manager/controllers/splash_controller.dart';
import 'package:getx_task_manager/gen/assets.gen.dart';
import 'package:getx_task_manager/utils/colors.dart';
import 'package:getx_task_manager/utils/size_config.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController controller = Get.find<SplashController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: controller,
      builder: (_) => Scaffold(
        backgroundColor: AppColor.primaryAppColor,
        body: Center(
          child: Image.asset(
            Assets.images.logoNoBackground.path,
            width: SizeConfig.blockSizeHorizontal * 70,
            height: SizeConfig.blockSizeVertical * 70,
          ),
        ),
      ),
    );
  }
}
