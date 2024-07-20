import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/about_me/about_me.dart';
import '../screens/contact_me/contact_me.dart';
import '../screens/experiences/experience.dart';
import '../screens/intro/introduction.dart';
import '../screens/projects/project_view.dart';

class CustomPageController extends GetxController {
  static CustomPageController get instance => Get.find();
  final RxInt selectedIndex = 0.obs;
  final offset = 0.obs;
  final scrollController = ScrollController();
  final List<bool> isHovered = List.generate(5, (_) => false).obs;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      offset.value = scrollController.offset.toInt();
    });
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void selectTab(int index, BuildContext context) {
    selectedIndex.value = index;
    final targetOffset = index * MediaQuery.of(context).size.height;

    scrollController.animateTo(
      targetOffset,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void onHover(int index, bool isHovered) {
    this.isHovered[index] = isHovered;
  }

  List<Widget> screens = [
    const IntroductionView(),
    const AboutMeView(),
    ProjectsView(),
    const ExperienceView(),
    const ContactMeView(),
  ];
}
