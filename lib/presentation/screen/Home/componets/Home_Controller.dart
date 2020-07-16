import 'dart:math';
import 'package:expenseexampleapp/domain/model/Transaction.dart';
import 'package:expenseexampleapp/presentation/screen/Home/componets/TransactionFormWidgt.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  List<Transaction> transaction = [
    Transaction(
        id: "t1",
        title: "lala",
        value: 10.0,
        date: DateTime.now().subtract(Duration(days: 33))),
    Transaction(
        id: "t2",
        title: "lala",
        value: 10.0,
        date: DateTime.now().subtract(Duration(days: 4))),
    Transaction(
        id: "t3",
        title: "lala",
        value: 10.0,
        date: DateTime.now().subtract(Duration(days: 5))),
    Transaction(
        id: "t4",
        title: "lala",
        value: 10.0,
        date: DateTime.now().subtract(Duration(days: 1))),
  ];

  List<Transaction> get recentTransactions {
    return recentTransactions.where((element) {
      return element.date.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
    transaction.add(newTransaction);
    this.update();
    Get.close(0); // fecho meu modal em 0 segundos
  }

  openTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForm(addTransaction);
        });
  }
}
