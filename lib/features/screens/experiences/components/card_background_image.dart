import 'package:flutter/material.dart';

import '../../../../utils/constants/app_images.dart';
import '../../../controllers/experience_controller.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.controller,
    required this.index,
  });

  final ExperienceController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 700),
      height: MediaQuery.of(context).size.height * 0.5,
      width: 300,
      curve: Curves.easeInOut,
      top: controller.hovers[index] ? 100 : 0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(controller.hovers[index] ? 0 : 30),
            topRight: Radius.circular(controller.hovers[index] ? 0 : 30),
            bottomLeft: const Radius.circular(30),
            bottomRight: const Radius.circular(30),
          ),
          image: const DecorationImage(
            image: AssetImage(AppImages.projectCardBG),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
