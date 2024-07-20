import 'package:flutter/material.dart';
import '../../../../../utils/constants/app_colors.dart.dart';
import '../../../../../utils/constants/app_sizes.dart';
import 'drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: AppColors.bgColor.withOpacity(0.9),
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const DrawerImage(),
            const Spacer(),
            Text(
              'Qamar Zaman',
              style: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .apply(color: Colors.white),
            ),
            const SizedBox(height: AppSizes.defaultPadding / 4),
            const Text(
              'Flutter Developer',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  height: 1.5,
                  color: Colors.white),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
