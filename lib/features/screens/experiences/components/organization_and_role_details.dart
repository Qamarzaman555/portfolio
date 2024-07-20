import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/widgets/responsive/responsive.dart';
import '../../../../utils/data/experience_data.dart';
import '../../../controllers/experience_controller.dart';

class OrganizationAndRole extends StatelessWidget {
  const OrganizationAndRole({
    super.key,
    required this.controller,
    required this.index,
  });

  final ExperienceController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.isLargeMobile(context) ||
        Responsive.isTablet(context) ||
        Responsive.isMobile(context);
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      top: controller.hovers[index] ? 0 : 60,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 300,
        height: responsive ? 120 : 100,
        decoration: BoxDecoration(
          color: controller.hovers[index] ? Colors.black12 : Colors.white54,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(controller.hovers[index] ? 30 : 0),
            topRight: Radius.circular(controller.hovers[index] ? 30 : 0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              ExperienceData.certificateList[index].name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              ExperienceData.certificateList[index].organization,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),
            ),
            Text(
              ExperienceData.certificateList[index].date,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black45,
              ),
            ),
            if (responsive)
              if (ExperienceData.certificateList[index].credential != null)
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(
                          ExperienceData.certificateList[index].credential!));
                    },
                    child: const Text(
                      'View Credential',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
