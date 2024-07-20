import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/widgets/title_text/title_text.dart';
import '../../../utils/constants/app_sizes.dart';
import '../../../utils/constants/app_strings.dart';
import '../../../constants/widgets/responsive/responsive.dart';
import 'components/about_me_description.dart';
import 'components/side_image.dart';
import '../../controllers/page_controller.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = (Responsive.isLargeMobile(context) ||
        (Responsive.isTablet(context)) ||
        (Responsive.isMobile(context)));
    final controller = CustomPageController.instance;

    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: double.infinity,
      child: Padding(
        padding: responsive
            ? const EdgeInsets.symmetric(horizontal: AppSizes.defaultPadding)
            : const EdgeInsets.all(AppSizes.defaultPadding / 2),
        child: GetBuilder<CustomPageController>(
          builder: (_) {
            return AnimatedBuilder(
              animation: controller.scrollController,
              builder: (context, child) {
                final scrollOffset = controller.scrollController.offset;
                final screenHeight = MediaQuery.of(context).size.height;
                final animationValue =
                    (scrollOffset / screenHeight).clamp(0.0, 1.0);

                return Row(
                  children: [
                    if (!responsive)
                      Transform.translate(
                        offset: Offset(-500 * (1 - animationValue), 0),
                        child: const MyImage(),
                      ),
                    responsive
                        ? Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 80, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Transform.translate(
                                    offset:
                                        Offset(-500 * (1 - animationValue), 0),
                                    child: const CombineTitleText(
                                        text1: 'About', text2: 'Me'),
                                  ),
                                  const SizedBox(height: 50),
                                  Transform.translate(
                                    offset:
                                        Offset(500 * (1 - animationValue), 0),
                                    child: Text(
                                      AppStrings.aboutMe1,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .titleSmall!
                                          .apply(color: Colors.black),
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Transform.translate(
                                    offset:
                                        Offset(500 * (1 - animationValue), 0),
                                    child: Text(
                                      AppStrings.aboutMe2,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .titleSmall!
                                          .apply(color: Colors.black),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: animationValue,
                                    child: InkWell(
                                      onTap: () {
                                        Get.dialog(Dialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const SingleChildScrollView(
                                              child: Flexible(
                                                  fit: FlexFit.tight,
                                                  child: AllAboutMe()),
                                            )));
                                      },
                                      child: const Text(
                                        'read more...',
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Expanded(
                            flex: 3,
                            child: Transform.translate(
                              offset: Offset(500 * (1 - animationValue), 0),
                              child: const AllAboutMe(),
                            ),
                          ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
