import 'package:expenseexampleapp/common/util/theme.main.dart';
import 'package:expenseexampleapp/infrastruture/navegation.dart';
import 'package:expenseexampleapp/infrastruture/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeMain.instance.theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      getPages: Nav.routes,
    );
  }





}
