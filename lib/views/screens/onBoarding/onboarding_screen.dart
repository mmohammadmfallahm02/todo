import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_task_manager/controllers/onboarding_controller.dart';
import 'package:getx_task_manager/utils/colors.dart';
import 'package:getx_task_manager/utils/size_config.dart';
import 'package:getx_task_manager/utils/style.dart';
import 'package:getx_task_manager/views/screens/onBoarding/components/onboarding_appBar.dart';

class OnboardingScreen extends GetView<OnboardingController> {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBackgroundAppColor,
      appBar: const OnBoardingAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 0, 32, 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: SizeConfig.screenHeight * 0.66,
              child: PageView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  final pageItem = controller.pages[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        pageItem.image,
                        height: SizeConfig.screenHeight * 0.4,
                      ),
                      const SizedBox(),
                      Text(
                        pageItem.title,
                        style: MyDefaultTextStyle.getBoldStyle(
                            fontSize: FontSize.c32,
                            color: AppColor.lightPrimaryTextButtonAppColor),
                      ),
                      Text(
                        pageItem.description,
                        textAlign: TextAlign.center,
                        style: MyDefaultTextStyle.getRegularStyle(
                            fontSize: FontSize.c16,
                            color: AppColor.lightPrimaryTextButtonAppColor),
                      ),
                    ],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'BACK',
                      style: MyDefaultTextStyle.getRegularStyle(
                          color: AppColor.lightSecondaryTextButtonAppColor,
                          fontSize: FontSize.c16),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'NEXT',
                      style: MyDefaultTextStyle.getRegularStyle(
                          color: Colors.white, fontSize: FontSize.c16),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
