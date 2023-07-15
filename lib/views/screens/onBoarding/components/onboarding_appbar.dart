import 'package:flutter/material.dart';
import 'package:getx_task_manager/utils/colors.dart';
import 'package:getx_task_manager/utils/style.dart';

class OnBoardingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const OnBoardingAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'SKIP',
                  style: MyDefaultTextStyle.getRegularStyle(
                      color: AppColor.darkSecondaryTextButtonAppColor,
                      fontSize: FontSize.c16),
                ))
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
