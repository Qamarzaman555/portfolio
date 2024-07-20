import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/widgets/responsive/responsive.dart';
import '../../../../utils/data/experience_data.dart';
import '../../../controllers/experience_controller.dart';
import 'card_background_image.dart';
import 'mobile_experience_card.dart';
import 'organization_and_role_details.dart';
import 'skills_and_credentials_details.dart';

class ExperianceGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  ExperianceGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});

  final controller = Get.put(ExperienceController());

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.isLargeMobile(context) ||
        Responsive.isTablet(context) ||
        Responsive.isMobile(context);
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: ExperienceData.certificateList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: ratio,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16),
      itemBuilder: (context, index) {
        return responsive
            ? MobileExperienceCard(index: index)
            : Obx(
                () => MouseRegion(
                  onEnter: (_) => controller.onHover(index, true),
                  onExit: (_) => controller.onHover(index, false),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: 300,
                      ),
                      BackgroundImage(controller: controller, index: index),
                      if (controller.hovers[index])
                        SkillsAndCredentials(
                            controller: controller, index: index)
                      else
                        const SizedBox.shrink(),
                      OrganizationAndRole(controller: controller, index: index),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
