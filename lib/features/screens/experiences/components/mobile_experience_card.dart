import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../constants/widgets/responsive/responsive.dart';
import '../../../../utils/constants/app_images.dart';
import '../../../../utils/data/experience_data.dart';

class MobileExperienceCard extends StatelessWidget {
  const MobileExperienceCard({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.isLargeMobile(context) ||
        Responsive.isTablet(context) ||
        Responsive.isMobile(context);
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            image: DecorationImage(
              image: AssetImage(AppImages.projectCardBG),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(color: Colors.white54),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                ExperienceData.certificateList[index].name,
                style: const TextStyle(
                  fontSize: 18,
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
      ],
    );
  }
}
