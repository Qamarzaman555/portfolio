import 'package:get/get.dart';
import 'package:carousel_slider/carousel_controller.dart';
import '../../utils/data/projects_data.dart';

class ProjectController extends GetxController {
  static ProjectController get instance => Get.find();
  final CarouselController carouselController = CarouselController();

  var hovers = <bool>[].obs;
  var currentPage = 0.obs;

  @override
  void onInit() {
    hovers.addAll(List.filled(ProjectsData.projectList.length, false));
    super.onInit();
  }

  void onHover(int index, bool isHovered) {
    hovers[index] = isHovered;
  }
}
