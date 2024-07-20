import 'package:flutter/material.dart';
import '../../../features/screens/intro/components/subtitle_text.dart';
import '../responsive/responsive.dart';

class CombineTitleText extends StatelessWidget {
  const CombineTitleText({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Responsive(
          desktop: AnimatedSubtitleText(
              start: 30, end: 40, text: '$text1 ', color: Colors.black),
          largeMobile: AnimatedSubtitleText(
              start: 30, end: 25, text: '$text1 ', color: Colors.black),
          mobile: AnimatedSubtitleText(
              start: 25, end: 20, text: '$text1 ', color: Colors.black),
          tablet: AnimatedSubtitleText(
              start: 40, end: 30, text: '$text1 ', color: Colors.black),
        ),
        ShaderMask(
          shaderCallback: (bounds) {
            return const LinearGradient(colors: [
              Colors.pink,
              Colors.blue,
            ]).createShader(bounds);
          },
          child: Responsive(
            desktop: AnimatedSubtitleText(
                start: 30, end: 40, text: '$text2 ', gradient: false),
            largeMobile: AnimatedSubtitleText(
                start: 30, end: 25, text: '$text2 ', gradient: false),
            mobile: AnimatedSubtitleText(
                start: 25, end: 20, text: '$text2 ', gradient: true),
            tablet: AnimatedSubtitleText(
                start: 40, end: 30, text: '$text2 ', gradient: false),
          ),
        )
      ],
    );
  }
}
