import 'package:flutter/material.dart';
import 'package:getx_task_manager/utils/colors.dart';
import 'package:getx_task_manager/views/screens/onBoarding/components/onboarding_appbar.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkBackgroundAppColor,
      appBar: const OnBoardingAppBar(),
    );
  }
}
