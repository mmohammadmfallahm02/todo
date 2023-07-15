import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_task_manager/gen/assets.gen.dart';
import 'package:getx_task_manager/routes/name_routes.dart';
import 'package:getx_task_manager/utils/colors.dart';
import 'package:getx_task_manager/utils/size_config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.offNamed(NameRoutes.onBoardingScreen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryAppColor,
      body: Center(
        child: Image.asset(
          Assets.images.logoNoBackground.path,
          width: SizeConfig.blockSizeHorizontal*70,
          height: SizeConfig.blockSizeVertical*70,
        ),
      ),
    );
  }
}
