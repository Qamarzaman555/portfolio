import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_sizes.dart';
import '../../../../../utils/constants/app_strings.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: AppSizes.defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: AppStrings.contactNo),
        AreaInfoText(title: 'Email', text: AppStrings.myEmail),
        AreaInfoText(title: 'LinkedIn', text: AppStrings.linkedInUserName),
        AreaInfoText(title: 'Github', text: AppStrings.githubUserName),
        SizedBox(
          height: AppSizes.defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.black),
        ),
        SizedBox(
          height: AppSizes.defaultPadding,
        ),
      ],
    );
  }
}
