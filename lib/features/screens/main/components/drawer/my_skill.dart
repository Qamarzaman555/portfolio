import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_sizes.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator(
      {super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppSizes.defaultPadding / 2),
      child: TweenAnimationBuilder(
        tween: Tween(begin: 0.0, end: percentage),
        duration: const Duration(seconds: 1),
        builder: (context, value, child) {
          return Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    image!,
                    height: 15,
                    width: 15,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                  const Spacer(),
                  Text('${(value * 100).toInt().toString()}%'),
                ],
              ),
              const SizedBox(
                height: AppSizes.defaultPadding / 2,
              ),
              LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.black,
                color: Colors.amberAccent,
              ),
            ],
          );
        },
      ),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(
            percentage: 0.7,
            title: 'Flutter',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.9, title: 'Dart', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.6,
            title: 'Firebase',
            image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(
          percentage: 0.8,
          title: 'RestApi',
          image: 'assets/icons/rest_api.png',
        ),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Responsive Design',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.9,
            title: 'Clean Architecture',
            image: 'assets/icons/flutter.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.7, title: 'Getx', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.93, title: 'Stacked', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.6, title: 'Povider', image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.6, title: 'Docker', image: 'assets/icons/docker.png'),
        AnimatedLinearProgressIndicator(
            percentage: 0.8,
            title: 'Swagger',
            image: 'assets/icons/swagger.png'),
      ],
    );
  }
}
