import 'package:flutter/material.dart';

import '../../../../constants/widgets/responsive/responsive.dart';
import '../../intro/components/subtitle_text.dart';

class CombineContactsTitleText extends StatelessWidget {
  const CombineContactsTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: 'Contact ', color: Colors.black),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: 'Contact ', color: Colors.black),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: 'Contact ', color: Colors.black),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: 'Contact ', color: Colors.black),
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(colors: [
              Colors.pink,
              Colors.blue,
            ]).createShader(bounds);
          },
          child: const Responsive(
            desktop: AnimatedSubtitleText(
                start: 30, end: 40, text: 'Me ', gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30, end: 25, text: 'Me ', gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25, end: 20, text: 'Me ', gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40, end: 30, text: 'Me ', gradient: false),
          ),
        )
      ],
    );
  }
}
