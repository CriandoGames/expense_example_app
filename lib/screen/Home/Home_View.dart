import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../teste.dart';
import 'componets/Home_Controller.dart';
import 'componets/TransactionFormWidgt.dart';

class Home extends StatelessWidget {


  _openTrnsactionFormModal(BuildContext context){
    showModalBottomSheet(
      context: context,
       builder: (_){
          return GetBuilder<HomeController>(
          init: HomeController(),
          builder: (_) {
            return TransactionForm(_.addTransaction);
          },
        );
       });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despensas Pessoais"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _openTrnsactionFormModal(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
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
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:()=> _openTrnsactionFormModal(context),
      ),
    );
  }
}
