import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

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
                    print("Value " + _valueController.text);
                    print("Title " + _titleController.text);
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
