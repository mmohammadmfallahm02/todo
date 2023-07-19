import 'package:get/get.dart';
import 'package:getx_task_manager/gen/assets.gen.dart';
import 'package:getx_task_manager/models/onboarding_pageview_model.dart';

class OnboardingController extends GetxController {
  final List<PageData> pages = [
    PageData(
      image: Assets.images.onBoardingPic1,
      title: 'Manage your tasks',
      description:
          'You can easily manage all of your daily tasks in Task Manager for free',
    ),
    PageData(
      image: Assets.images.onBoardingPic2,
      title: 'Create daily routine',
      description:
          'In Task Manager  you can create your personalized routine to stay productive',
    ),
    PageData(
      image: Assets.images.onBoardingPic3,
      title: 'Organize your tasks',
      description:
          'You can organize your daily tasks by adding your tasks into separate categories',
    ),
  ];
  // List<PageData> get pages => PageViewData.pages;
}

// class PageViewData {
//   static List<PageData> pages = [
//     // Add more PageData objects for additional pages
//   ];
// }
