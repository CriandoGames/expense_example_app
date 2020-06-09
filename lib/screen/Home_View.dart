import 'package:expenseexampleapp/model/Transaction.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  //teste

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
            Column(
              children: <Widget>[
                ..._transaction.map((e) {
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
                            color: Colors.black,
                            width: 2,
                          )),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            e.value.toString(),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Text(e.title),
                            Text(e.date.toString()),
                          ],
                        ),
                      ],
                    ),
                  );
                })
              ],
            ),
          ],
        ));
  }
}
