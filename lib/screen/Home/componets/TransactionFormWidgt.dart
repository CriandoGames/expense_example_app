import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _valueController = TextEditingController();

  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  _submitForm() {
    final title = _titleController.text;
    final value = double.parse(_valueController.text);
    print(title + value.toString());

    if(title.isEmpty || value <=0)
    {
      return;
    }
    onSubmit(title, value);
  }

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
              onSubmitted: (_) => _submitForm(),
            ),
            TextField(
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              controller: _valueController,
              //onChanged: (value) => _valueController.text = value,
              decoration: InputDecoration(
                labelText: "Valor",
              ),
              onSubmitted: (_) => _submitForm(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text("Nova Trasação"),
                  textColor: Colors.purpleAccent,
                  onPressed:  _submitForm,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
