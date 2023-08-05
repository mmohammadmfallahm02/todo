import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_task_manager/components/theme.dart';
import 'package:getx_task_manager/controllers/onboarding_controller.dart';
import 'package:getx_task_manager/components/size_config.dart';
import 'package:getx_task_manager/components/style.dart';
import 'package:getx_task_manager/views/screens/onBoarding/components/onboarding_appBar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            // top area
            SizedBox(
              height: SizeConfig.screenHeight * 0.66,
              child: Stack(
                children: [
                  // page view
                  PageView.builder(
                    onPageChanged: (value) => controller.onPageChange(value),
                    controller: controller.pageController,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      final pageItem = controller.pages[index];
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            pageItem.image,
                            height: SizeConfig.screenHeight * 0.38,
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

                  // indicator
                  Positioned(
                    top: SizeConfig.screenHeight / 2.45,
                    left: 0,
                    right: 0,
                    child: Container(
                      alignment: Alignment.center,
                      height: 30,
                      width: 100,
                      child: SmoothPageIndicator(
                        controller: controller.pageController,
                        count: controller.pages.length,
                        axisDirection: Axis.horizontal,
                        effect: WormEffect(
                          spacing: 8.0,
                          radius: 10.0,
                          dotWidth: SizeConfig.screenWidth / 7,
                          dotHeight: 3.5,
                          paintStyle: PaintingStyle.stroke,
                          strokeWidth: 1.5,
                          dotColor: Colors.grey,
                          activeDotColor: AppColor.primaryAppColor,
                          type: WormType.underground,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            // btn area
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // back btn
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 100),
                    opacity: controller.btnBackOpacity.value,
                    child: TextButton(
                        onPressed: () {
                          controller.goBackPage();
                        },
                        child: Text(
                          'BACK',
                          style: MyDefaultTextStyle.getRegularStyle(
                              color: AppColor.lightSecondaryTextButtonAppColor,
                              fontSize: FontSize.c16),
                        )),
                  ),

                  // next btn
                  ElevatedButton(
                      onPressed: () {
                        controller.goNextPage();
                      },
                      child: Text(
                        controller.btnText.value,
                        style: MyDefaultTextStyle.getRegularStyle(
                            color: Colors.white, fontSize: FontSize.c16),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
