import 'package:flutter/material.dart';

import '../../../../utils/constants/app_images.dart';
import '../../../../utils/constants/app_sizes.dart';

class AnimatedImageContainer extends StatefulWidget {
  const AnimatedImageContainer(
      {super.key, this.height = 300, this.width = 250});
  final double? width;
  final double? height;
  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true); // Repeat the animation loop
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset:
              Offset(2 * value, 14 * value), // Move the container up and down
          child: Container(
            height: widget.height!,
            width: widget.width!,
            padding: const EdgeInsets.all(AppSizes.defaultPadding / 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white54,
              border: Border.all(color: Colors.black54, width: 2),
            ),
            child: Image(
              image: const AssetImage(AppImages.myPhotoNoBG),
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
