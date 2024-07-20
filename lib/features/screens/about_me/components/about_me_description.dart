import 'package:flutter/material.dart';

import '../../../../constants/widgets/title_text/title_text.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../constants/widgets/responsive/responsive.dart';

class AllAboutMe extends StatelessWidget {
  const AllAboutMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = (Responsive.isLargeMobile(context) ||
        (Responsive.isTablet(context)) ||
        (Responsive.isMobile(context)));
    return Padding(
      padding: responsive
          ? const EdgeInsets.symmetric(horizontal: 20, vertical: 30)
          : const EdgeInsets.only(top: 80, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const CombineTitleText(text1: "About", text2: 'Me'),
              const SizedBox(height: 50),
              Text(
                AppStrings.aboutMe1,
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall!
                    .apply(color: Colors.black),
              ),
              const SizedBox(height: 20),
              Text(
                AppStrings.aboutMe2,
                style: Theme.of(context)
                    .primaryTextTheme
                    .titleSmall!
                    .apply(color: Colors.black),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            AppStrings.aboutMe3,
            style: Theme.of(context)
                .primaryTextTheme
                .titleSmall!
                .apply(color: Colors.black),
          ),
          const SizedBox(height: 20),
          Text(
            AppStrings.aboutMe4,
            style: Theme.of(context)
                .primaryTextTheme
                .titleSmall!
                .apply(color: Colors.black),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
