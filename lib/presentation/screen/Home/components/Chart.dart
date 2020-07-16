import 'package:expenseexampleapp/domain/model/Transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransaction;

  Chart(this.recentTransaction);

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(
        days: index,
      ));

      double totalSun = 0.0;

      for(var i = 0; i < recentTransaction.length; i++){
        bool sameDay = recentTransaction[i].date.day == weekDay.day;
        bool sameMonth = recentTransaction[i].date.month == weekDay.month;
        bool sameYear = recentTransaction[i].date.year == weekDay.year;

        if(sameDay && sameMonth && sameYear ){
          totalSun+= recentTransaction[i].value;
        }

          print(DateFormat.E().format(weekDay)[0]);
          print(totalSun);
      }

      return {
        'day':  DateFormat.E().format(weekDay)[0], // Pega a primeira letra do dia
        'value': totalSun,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    groupedTransactions;
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
