import 'package:flutter/material.dart';
import '../../../../../utils/constants/app_sizes.dart';
import 'contact_icons.dart';
import 'personal_info.dart';
import '../../../../../utils/constants/app_colors.dart.dart';
import 'knowledges.dart';
import 'about.dart';
import 'my_skill.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.bgColor.withOpacity(0.55),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: Colors.white54.withOpacity(0.9),
              child: const Padding(
                padding: EdgeInsets.all(AppSizes.defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MySKills(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: AppSizes.defaultPadding,
                    ),
                    ContactIcon(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
