import 'package:get/get.dart';

class ExperienceController extends GetxController {
  RxList<bool> hovers = List.generate(13, (_) => false).obs;

  void onHover(int index, bool value) {
    hovers[index] = value;
  }
}
