import 'package:expenseexampleapp/presentation/screen/Home/components/Chart.dart';
import 'package:expenseexampleapp/presentation/screen/Home/components/TransactionListViewWidgt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'components/Home_Controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despensas Pessoais"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => controller.openTransactionFormModal(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Obx(() {
              return Container(
                  width: double.infinity,
                  child: Chart(controller.transaction.value));
            }),
            Obx(() {
              return TransactionList(
                  transactions: controller.transaction.value);
            }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.openTransactionFormModal(context),
      ),
    );
  }
}
