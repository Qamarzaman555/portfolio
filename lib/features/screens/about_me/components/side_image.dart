import 'package:flutter/material.dart';

import '../../../../utils/constants/app_images.dart';

class MyImage extends StatelessWidget {
  const MyImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Image(
            image: AssetImage(AppImages.myPhotoNoBG),
            fit: BoxFit.fitHeight,
          ),
          Divider(
            indent: 20,
            thickness: 2,
            endIndent: 20,
          ),
        ],
      ),
    );
  }
}
