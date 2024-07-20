import 'package:flutter/material.dart';
import '../../../../utils/constants/app_sizes.dart';
import '../../../../utils/data/projects_data.dart';
import 'project_link.dart';

import '../../../../constants/widgets/responsive/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            ProjectsData.projectList[index].name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox.shrink()
            : const SizedBox(
                height: AppSizes.defaultPadding,
              ),
        Text(
          ProjectsData.projectList[index].description,
          style: const TextStyle(color: Colors.grey, height: 1.5),
          maxLines: 12,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        ProjectLinks(
          index: index,
        ),
      ],
    );
  }
}
