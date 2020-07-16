import 'package:expenseexampleapp/common/util/theme.main.dart';
import 'package:expenseexampleapp/infrastruture/navegation.dart';
import 'package:expenseexampleapp/infrastruture/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'screen/Home/Home_View.dart';

void main() {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeMain.instance.theme(),
      home: Home(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      getPages: Nav.routes,
    );
  }





}
