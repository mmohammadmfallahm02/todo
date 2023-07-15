import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_task_manager/controllers/onboarding_controller.dart';
import 'package:getx_task_manager/utils/colors.dart';
import 'package:getx_task_manager/utils/size_config.dart';
import 'package:getx_task_manager/utils/style.dart';
import 'package:getx_task_manager/views/screens/onBoarding/components/onboarding_appbar.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  final OnboardingController controller = Get.find<OnboardingController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBackgroundAppColor,
      appBar: const OnBoardingAppBar(),
      body: SizedBox(
        height: SizeConfig.screenHeight * 0.7,
        child: PageView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            final pageItem = controller.pages[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    pageItem.image,
                    height: SizeConfig.screenHeight * 0.4,
                  ),
                  const SizedBox(height: 5,),
                  Text(
                    pageItem.title,
                    style: MyDefaultTextStyle.getBoldStyle(
                        fontSize: FontSize.c32,
                        color: AppColor.darkPrimaryTextButtonAppColor),
                  ),
                  Text(
                    pageItem.description,
                    textAlign: TextAlign.center,
                    style: MyDefaultTextStyle.getRegularStyle(
                        fontSize: FontSize.c16,
                        color: AppColor.darkPrimaryTextButtonAppColor),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
