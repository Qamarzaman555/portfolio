import 'package:flutter/material.dart';
import '../../../../constants/widgets/responsive/responsive.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../intro/components/side_menu_button.dart';
import 'connect_button.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(AppSizes.defaultPadding / 2),
            child: !Responsive.isLargeMobile(context)
                ? Image.asset('assets/images/image.png')
                : MenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
          ),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
