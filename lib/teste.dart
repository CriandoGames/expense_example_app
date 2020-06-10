import 'dart:math';

import 'package:expenseexampleapp/screen/Home/componets/Home_Controller.dart';
import 'package:flutter/material.dart';
import 'package:expenseexampleapp/model/Transaction.dart';
import 'package:get/get.dart';
import 'screen/Home/componets/TransactionFormWidgt.dart';
import 'screen/Home/componets/TransactionListViewWidgt.dart';

class TransactionUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        GetBuilder<HomeController>(
          init: HomeController(),
          builder: (_) {
            return TransactionList(
              transactions: _.transaction,
            );
          },
        ),
        GetBuilder<HomeController>(
          init: HomeController(),
          builder: (_) {
            return TransactionForm(_.addTransaction);
          },
        ),
      ],
    );
  }
}
