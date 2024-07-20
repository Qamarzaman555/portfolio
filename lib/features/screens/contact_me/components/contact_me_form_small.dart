import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/app_images.dart';
import '../../../../utils/validators/validators.dart';
import '../../../controllers/contact_me_controller.dart';

class ContactMeFormSmall extends StatelessWidget {
  const ContactMeFormSmall({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ContactMeController());
    return Form(
      key: controller.contactMeFormKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Full Name
          TextFormField(
            validator: (value) =>
                AppValidator.validateEmptyText('Enter full name', value),
            controller: controller.fullName,
            decoration: InputDecoration(
                constraints: const BoxConstraints.expand(height: 40),
                labelStyle: const TextStyle(fontWeight: FontWeight.w600),
                prefixIcon: imageWithPadding(AppImages.user),
                labelText: 'Full name'),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Phone Number
                    TextFormField(
                      controller: controller.phoneNo,
                      validator: (value) =>
                          AppValidator.validatePhoneNumber(value),
                      expands: false,
                      decoration: InputDecoration(
                        constraints: const BoxConstraints.expand(height: 40),
                        label: const Text('Phone number'),
                        prefixIcon: imageWithPadding(AppImages.contact),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Email
                    TextFormField(
                      validator: (value) => AppValidator.validateEmail(value),
                      controller: controller.email,
                      decoration: InputDecoration(
                          constraints: const BoxConstraints.expand(height: 40),
                          labelStyle:
                              const TextStyle(fontWeight: FontWeight.w600),
                          prefixIcon: imageWithPadding(AppImages.mail),
                          labelText: 'Email'),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 16),
          // Message
          TextFormField(
            controller: controller.message,
            maxLength: 500,
            maxLines: 3,
            onChanged: controller.updateCharCount,
            decoration: InputDecoration(
              labelStyle: const TextStyle(fontWeight: FontWeight.w600),
              prefixIcon:
                  imageWithPadding(AppImages.message, height: 20, width: 20),
              labelText: 'Message',
            ),
          ),
          // const SizedBox(height: 12),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1, color: Colors.grey),
                fixedSize: Size(MediaQuery.sizeOf(context).width / 2, 40),
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              ),
              onPressed: controller.sendEmail,
              child: Row(
                children: [
                  Text('Send', style: TextStyle(color: Colors.grey[600])),
                  const Spacer(),
                  Icon(
                    FontAwesomeIcons.arrowRight,
                    size: 18,
                    color: Colors.grey[600],
                  )
                ],
              ))
        ],
      ),
    );
  }

  Widget imageWithPadding(String image, {double? height, double? width}) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Image.asset(
        color: Colors.grey,
        height: height,
        width: width,
        image,
      ),
    );
  }
}
