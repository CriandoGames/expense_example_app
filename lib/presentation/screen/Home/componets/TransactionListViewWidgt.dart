import 'package:expenseexampleapp/domain/model/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList({@required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty ? Column(
        children: <Widget>[
          Text("Nenhuma Transação Cadastrada"),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 200,
            child: Image.asset("assets/images/waiting.png", fit: BoxFit.cover,)),
        ],
      ): ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (_, index) {
            final e = transactions[index];
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Theme.of(context).primaryColor,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'R\$ ' + e.value.toStringAsFixed(2),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).primaryColor),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        e.title,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Quicksand'),
                      ),
                      Text(
                        DateFormat("d/MM/y").format(e.date),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}
