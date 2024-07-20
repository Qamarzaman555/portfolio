import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/widgets/responsive/responsive.dart';
import '../../controllers/page_controller.dart';
import 'components/connect_button.dart';
import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CustomPageController());

    final isMobile =
        Responsive.isMobile(context) || Responsive.isLargeMobile(context);
    return Scaffold(
      drawer: const CustomDrawer(),
      body: CustomScrollView(
        controller: controller.scrollController,
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            expandedHeight: 80.0,
            flexibleSpace: isMobile
                ? const SizedBox.shrink()
                : const FlexibleSpaceBar(title: Text('My Portfolio')),
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                );
              },
            ),
            actions: [
              const NavigationButtonList(),
              if (isMobile) const SizedBox(width: 12),
              const ConnectButton(),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return controller.screens[index];
              },
              childCount: controller.screens.length,
            ),
          ),
        ],
      ),
      floatingActionButton: Obx(
        () => controller.offset.value > 0
            ? FloatingActionButton.small(
                backgroundColor: const Color(0xff353333),
                onPressed: () {
                  controller.selectTab(0, context);
                },
                child: const Icon(
                  Icons.keyboard_arrow_up,
                  color: Colors.white,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
