import 'package:flutter/material.dart';
import '../../../constants/widgets/responsive/responsive.dart';
import '../../../constants/widgets/title_text/title_text.dart';
import '../../../utils/constants/app_sizes.dart';
import 'components/experience_card_grid.dart';

class ExperienceView extends StatelessWidget {
  const ExperienceView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: AppSizes.defaultPadding,
            ),
          const CombineTitleText(text1: 'My', text2: 'Experience'),
          const SizedBox(height: AppSizes.defaultPadding),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Responsive(
                desktop: ExperianceGrid(
                  crossAxisCount: 3,
                  ratio: 1.5,
                ),
                extraLargeScreen: ExperianceGrid(crossAxisCount: 4, ratio: 1.5),
                largeMobile: ExperianceGrid(crossAxisCount: 1, ratio: 1.6),
                mobile: ExperianceGrid(crossAxisCount: 1, ratio: 1.4),
                tablet: ExperianceGrid(
                  ratio: 1.3,
                  crossAxisCount: 2,
                )),
          ))
        ],
      ),
    );
  }
}
