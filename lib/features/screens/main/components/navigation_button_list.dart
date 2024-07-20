import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/app_images.dart';
import '../../../controllers/page_controller.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatelessWidget {
  const NavigationButtonList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomPageController());
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onTap: () => controller.selectTab(0, context),
                text: 'Home',
                icon: AppImages.home, // Home icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(1, context),

                text: 'About Me',
                icon: AppImages.aboutMe, // Profile or user icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(2, context),
                text: 'Projects',
                icon: AppImages.project, // Folder or projects icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(3, context),
                text: 'Experience',
                icon: AppImages.experience, // Briefcase or work experience icon
              ),
              NavigationTextButton(
                onTap: () => controller.selectTab(4, context),
                text: 'Contact Me',
                icon: AppImages.contact, // Call or contact icon
              ),
            ],
          ),
        );
      },
    );
  }
}
