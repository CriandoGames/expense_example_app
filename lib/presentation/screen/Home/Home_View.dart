import 'package:expenseexampleapp/screen/Home/componets/Chart.dart';
import 'package:expenseexampleapp/screen/Home/componets/TransactionListViewWidgt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'componets/Home_Controller.dart';

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
            Container(
                width: double.infinity, child: Chart(controller.transaction)),
            TransactionList(transactions: controller.transaction),
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
