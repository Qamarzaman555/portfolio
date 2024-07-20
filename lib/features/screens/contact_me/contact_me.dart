import 'package:flutter/material.dart';

import '../../../constants/widgets/responsive/responsive.dart';
import 'components/contact_me_form_desktop.dart';
import 'components/contact_me_form_small.dart';
import 'components/side_title_column.dart';

class ContactMeView extends StatelessWidget {
  const ContactMeView({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.isLargeMobile(context) ||
        Responsive.isMobile(context) ||
        Responsive.isTablet(context);
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height / 1.5,
      child: Container(
        decoration: const BoxDecoration(color: Colors.black12),
        child: Padding(
          padding: responsive
              ? const EdgeInsets.symmetric(horizontal: 24, vertical: 12)
              : const EdgeInsets.only(top: 60, left: 180, right: 20),
          child: Column(
            children: [
              responsive ? const SideTitle() : const SizedBox.shrink(),
              if (responsive) const SizedBox(height: 4),
              const Responsive(
                desktop: ContactMeFormDesktop(),
                largeMobile: ContactMeFormSmall(),
                mobile: ContactMeFormSmall(),
                tablet: ContactMeFormSmall(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
