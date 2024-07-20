import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../utils/constants/app_sizes.dart';

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({super.key, required this.knowledge});
  final String knowledge;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/check.svg'),
          const SizedBox(
            width: AppSizes.defaultPadding / 2,
          ),
          Text(knowledge),
        ],
      ),
    );
  }
}
