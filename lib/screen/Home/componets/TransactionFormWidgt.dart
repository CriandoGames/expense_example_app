import 'package:expenseexampleapp/model/Transaction.dart';
import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _titleController,
              // onChanged: (value) => _titleController.text = value,
              decoration: InputDecoration(
                labelText: "Título",
              ),
            ),
            TextField(
              controller: _valueController,
              //onChanged: (value) => _valueController.text = value,
              decoration: InputDecoration(
                labelText: "Valor",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text("Nova Trasação"),
                  textColor: Colors.purpleAccent,
                  onPressed: () {
                    final title = _titleController.text;
                    final value = double.parse(_valueController.text);
                    print(title + value.toString());
                    onSubmit(title, value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
