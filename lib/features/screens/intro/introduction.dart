import 'package:flutter/material.dart';
import '../../../constants/widgets/responsive/responsive.dart';
import 'components/intro_body.dart';
import 'components/social_media_list.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.01,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.02,
          ),
          if (!Responsive.isLargeMobile(context)) const SocialMediaIconList(),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.07,
          ),
          const Expanded(
            child: IntroBody(),
          ),
        ],
      ),
    );
  }
}
