import 'package:flutter/material.dart';

import '../../../../constants/widgets/responsive/responsive.dart';

class RowIconWithText extends StatelessWidget {
  const RowIconWithText({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive.isLargeMobile(context) ||
        Responsive.isMobile(context) ||
        Responsive.isTablet(context);
    return Row(
      children: [
        Icon(icon, color: Colors.black38, size: 20),
        const SizedBox(width: 6),
        Text(text,
            style: responsive
                ? Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black38)
                : Theme.of(context)
                    .primaryTextTheme
                    .titleSmall!
                    .apply(color: Colors.black38)),
      ],
    );
  }
}
