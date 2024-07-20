import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../constants/widgets/title_text/title_text.dart';
import '../../../utils/constants/app_colors.dart.dart';
import '../../../utils/constants/app_sizes.dart';
import '../../../utils/data/projects_data.dart';
import '../../controllers/projects_controller.dart';
import '../../../constants/widgets/responsive/responsive.dart';
import 'components/project_info.dart';

class ProjectsView extends StatelessWidget {
  ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProjectController());

    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: AppSizes.defaultPadding,
            ),
          const CombineTitleText(text1: 'My', text2: 'Projects'),
          const SizedBox(
            height: AppSizes.defaultPadding,
          ),
          Expanded(
            child: Center(
              child: Column(
                children: [
                  CarouselSlider.builder(
                    carouselController: controller.carouselController,
                    itemCount: ProjectsData.projectList.length,
                    itemBuilder: (context, index, realIndex) {
                      return Obx(
                        () => AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.symmetric(
                            vertical: AppSizes.defaultPadding,
                            horizontal: AppSizes.defaultPadding,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Colors.pinkAccent,
                                Colors.blue,
                              ],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.pink,
                                offset: const Offset(-2, 0),
                                blurRadius: controller.hovers[index] ? 20 : 10,
                              ),
                              BoxShadow(
                                color: Colors.blue,
                                offset: const Offset(2, 0),
                                blurRadius: controller.hovers[index] ? 20 : 10,
                              ),
                            ],
                          ),
                          child: ProjectStack(index: index),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: MediaQuery.sizeOf(context).height * 0.6,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        controller.currentPage.value = index;
                      },
                    ),
                  ),
                  const SizedBox(height: 12),
                  Obx(
                    () => AnimatedSmoothIndicator(
                      activeIndex: controller.currentPage.value,
                      count: ProjectsData.projectList.length,
                      effect: const WormEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        dotColor: AppColors.bgColor,
                        activeDotColor: Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
