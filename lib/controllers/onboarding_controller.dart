import 'package:get/get.dart';
import 'package:getx_task_manager/constant/app_text.dart';
import 'package:getx_task_manager/gen/assets.gen.dart';
import 'package:getx_task_manager/models/onboarding_pageview_model.dart';

class OnboardingController extends GetxController {
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
  // List<PageData> get pages => PageViewData.pages;
}

// class PageViewData {
//   static List<PageData> pages = [
//     // Add more PageData objects for additional pages
//   ];
// }
