import 'package:expenseexampleapp/componets/Home/TransactionFormView.dart';
import 'package:flutter/material.dart';

import 'componets/Home/TransactionListView.dart';
import 'model/Transaction.dart';

class TransactionUser extends StatelessWidget {
  final List<Transaction> _transaction = [
    Transaction(id: "t1", title: "lala", value: 10.0, date: DateTime.now()),
    Transaction(id: "t2", title: "carlos", value: 9.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transaction),
        TransactionForm(),
      ],
    );
  }
}
