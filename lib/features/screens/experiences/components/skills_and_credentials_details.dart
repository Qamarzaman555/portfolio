import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../utils/data/experience_data.dart';
import '../../../controllers/experience_controller.dart';

class SkillsAndCredentials extends StatelessWidget {
  const SkillsAndCredentials({
    super.key,
    required this.controller,
    required this.index,
  });

  final ExperienceController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      height: MediaQuery.of(context).size.height * 0.5,
      width: 300,
      curve: Curves.easeInOut,
      top: controller.hovers[index] ? 50 : 0,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(controller.hovers[index] ? 0 : 30),
            topRight: Radius.circular(controller.hovers[index] ? 0 : 30),
            bottomLeft: const Radius.circular(30),
            bottomRight: const Radius.circular(30),
          ),
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Skills: ${ExperienceData.certificateList[index].skills}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
      ),
    );
  }
}
