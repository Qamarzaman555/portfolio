import 'package:flutter/material.dart';

import '../../../../constants/widgets/responsive/responsive.dart';

class NavigationTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String icon;

  const NavigationTextButton(
      {super.key, required this.onTap, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context) || Responsive.isLargeMobile(context)
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: IconButton(
                onPressed: onTap,
                icon: Image.asset(
                  icon,
                ),
                tooltip: text),
          )
        : OutlinedButton(
            onPressed: onTap,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
            ));
  }
}
