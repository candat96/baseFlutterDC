import 'package:get/get.dart';

// Controller
import '../../../components/controller/common_controller.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<CommonController>()) {
      Get.put(CommonController(), permanent: true);
    }
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}
