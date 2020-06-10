import 'package:expenseexampleapp/componets/Home/TransactionFormView.dart';
import 'package:expenseexampleapp/componets/Home/TransactionListView.dart';
import 'package:expenseexampleapp/model/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../teste.dart';

class Home extends StatelessWidget {
  final List<Transaction> _transaction = [
    Transaction(id: "t1", title: "lala", value: 10.0, date: DateTime.now()),
    Transaction(id: "t2", title: "carlos", value: 9.99, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despensas Pessoais"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text("Grafico"),
            ),
          ),
          TransactionUser(),
        ],
      ),
    );
  }
}
