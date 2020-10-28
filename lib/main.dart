import 'package:flutter/material.dart';
import 'package:flutter_transactions/widgets/transaction_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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
              Card(
                elevation: 5,
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                        decoration: InputDecoration(labelText: 'Title'),
                      ),
                      TextField(
                        decoration: InputDecoration(labelText: 'Amount'),
                      ),
                      FlatButton(
                        child: Text(
                          'Add Transaction',
                          style: TextStyle(color: Colors.purple),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              TransactionList(),
            ],
          ),
        ),
      ),
    );
  }
}
