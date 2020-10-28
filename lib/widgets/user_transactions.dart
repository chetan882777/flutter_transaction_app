import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/transaction_list.dart';
import '../widgets/new_transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New SHoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2',
        title: 'Weekly groceries',
        amount: 15.49,
        date: DateTime.now())
  ];
  
  void _addTransaction(String txTitle, double txAmount) {
    final tx = Transaction(
      title:  txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString()
    );
    
    setState(() {
      _userTransactions.add(tx);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
