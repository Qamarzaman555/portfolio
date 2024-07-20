import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../constants/widgets/responsive/responsive.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/constants/app_strings.dart';

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile =
        Responsive.isMobile(context) || Responsive.isLargeMobile(context);
    return OutlinedButton(
      onPressed: () {
        launchUrl(Uri.parse('https://wa.me/${AppStrings.contactNo}'));
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            FontAwesomeIcons.whatsapp,
            color: Colors.greenAccent,
          ),
          if (!isMobile) const SizedBox(width: AppSizes.defaultPadding / 4),
          if (!isMobile)
            Text(
              'Whatsapp',
              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                  ),
            ),
        ],
      ),
    );
  }
}
