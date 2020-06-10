import 'dart:math';
import 'package:expenseexampleapp/model/Transaction.dart';
import 'package:get/get.dart';

class HomeController extends GetController {
  static HomeController get to => Get.find();

  List<Transaction> transaction = [
    //Transaction(id: "t1", title: "lala", value: 10.0, date: DateTime.now()),
   // Transaction(id: "t2", title: "carlos", value: 9.99, date: DateTime.now()),
   // Transaction(id: "t3", title: "carlos", value: 9.99, date: DateTime.now()),
  ];

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
}
