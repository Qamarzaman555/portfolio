import 'package:flutter/material.dart';
import 'social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
            icon: 'assets/icons/linkedin.svg',
            onTap: () => launchUrl(Uri.parse(
                'https://www.linkedin.com/in/qamar-zaman-997957177/'))),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () =>
              launchUrl(Uri.parse('https://github.com/Qamarzaman555/')),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/instagram.svg',
          onTap: () =>
              launchUrl(Uri.parse('https://www.instagram.com/zk_qamar/')),
        ),
      ],
    );
  }
}
