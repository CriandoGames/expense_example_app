import 'package:expenseexampleapp/presentation/screen/Home/components/Home_Controller.dart';
import 'package:get/get.dart';

class HomeControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
