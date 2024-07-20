import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../utils/constants/config.dart';
import 'page_controller.dart';

class ContactMeController extends GetxController {
  static ContactMeController get instance => Get.find();

  final email = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();
  final message = TextEditingController();
  GlobalKey<FormState> contactMeFormKey = GlobalKey<FormState>();

  var messageCharCount = 0.obs;

  @override
  dispose() {
    email.clear();
    fullName.clear();
    phoneNo.clear();
    message.clear();
    super.dispose();
  }

  Future<void> sendEmail() async {
    if (contactMeFormKey.currentState!.validate()) {
      const serviceId = Config.emailJsServiceId;
      const templateId = Config.emailJsTemplateId;
      const userId = Config.userId;

      final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
        },
        body: json.encode({
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'from_name': fullName.text,
            'to_name': 'Your Name',
            'user_email': email.text,
            'user_phone': phoneNo.text,
            'message': message.text,
          },
        }),
      );

      CustomPageController.instance.selectTab(0, Get.context!);

      dispose();

      if (response.statusCode == 200) {
        Get.snackbar('Success', 'Email sent successfully!');
      } else {
        Get.snackbar('Error', 'Failed to send email. Please try again.');
      }
    } else {
      Get.snackbar('Validation Error', 'Please fill out all fields correctly.');
    }
  }

  void updateCharCount(String value) {
    messageCharCount.value = value.length;
  }
}
