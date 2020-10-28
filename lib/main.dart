import 'package:flutter/material.dart';
import './transactions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
        id: 't1', title: 'New SHoes', amount: 69.99, date: DateTime.now()),
    Transactions(
        id: 't2',
        title: 'Weekly groceries',
        amount: 15.49,
        date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Transactions"),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  child: Text("Top card"),
                ),
              ),
              Column(
                children: transactions.map((tx) {
                  return Card(child: Text(tx.title));
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
