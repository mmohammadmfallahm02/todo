import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_task_manager/constant/app_text.dart';
import 'package:getx_task_manager/gen/assets.gen.dart';
import 'package:getx_task_manager/data/models/onboarding_pageview_model.dart';

class OnboardingController extends GetxController {
  // <--------------------------variables-------------------------->
  RxString btnText = 'NEXT'.obs;
  RxDouble btnBackOpacity = 1.0.obs;
  final PageController pageController = PageController();

  final List<PageData> pages = [
    PageData(
      image: Assets.images.onBoardingPic1,
      title: AppTexts.onBoardingTitle1,
      description: AppTexts.onBoardingDescription1,
    ),
    PageData(
      image: Assets.images.onBoardingPic2,
      title: AppTexts.onBoardingTitle2,
      description: AppTexts.onBoardingDescription2,
    ),
    PageData(
      image: Assets.images.onBoardingPic3,
      title: AppTexts.onBoardingTitle3,
      description: AppTexts.onBoardingDescription3,
    ),
  ];

  // <--------------------------methods-------------------------->

  // button NEXT to move between pages
  void goNextPage() {
    if (pageController.page!.toInt() < pages.length - 1) {
      pageController.animateToPage(pageController.page!.toInt() + 1,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    } else {}
  }

  // button BACK to move between pages
  void goBackPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.animateToPage(pageController.page!.toInt() - 1,
          duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }
  }

// change button text with change pageView page
  onPageChange(int index) {
    if (index == 0) {
      btnBackOpacity.value = 0;
    } else {
      btnBackOpacity.value = 1;
      if (index == pages.length - 1) {
        btnText.value = 'START';
      } else {
        btnText.value = 'NEXT';
      }
    }
  }
}
