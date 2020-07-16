import 'package:expenseexampleapp/infrastruture/bindings/controllers/home.controller.bindings.dart';
import 'package:expenseexampleapp/infrastruture/routes.dart';
import 'package:expenseexampleapp/presentation/screen/Home/Home_View.dart';
import 'package:get/get.dart';

class Nav {
  static List<GetPage> routes = [
    GetPage(
        name: Routes.HOME,
        page: () => Home(),
        binding: HomeControllerBindings()),
  ];
}
