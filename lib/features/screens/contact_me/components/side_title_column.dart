import 'package:flutter/material.dart';

import '../../../../constants/widgets/responsive/responsive.dart';
import '../../../../utils/constants/app_strings.dart';
import 'combine_contacts_title_text.dart';
import 'row_icon_with_text.dart';

class SideTitle extends StatelessWidget {
  const SideTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.isLargeMobile(context) ||
        Responsive.isMobile(context) ||
        Responsive.isTablet(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CombineContactsTitleText(),
        Text(
          'Ask me anything or just say hi...',
          style: responsive
              ? Theme.of(context).textTheme.titleSmall
              : Theme.of(context).textTheme.headlineSmall,
        ),
        responsive ? const SizedBox(height: 4) : const SizedBox(height: 20),
        const RowIconWithText(
            text: AppStrings.contactNo, icon: Icons.phone_outlined),
        const SizedBox(height: 8),
        const RowIconWithText(
            text: AppStrings.myEmail, icon: Icons.mail_outline_outlined),
        const SizedBox(height: 8),
      ],
    );
  }
}
