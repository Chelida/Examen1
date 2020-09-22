import 'package:depens_app/models/transaction.dart';
import 'package:depens_app/widgets/new_transaction.dart';
import 'package:depens_app/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1',
        title: 'Nouvelle chaussures',
        amount: 5000,
        date: DateTime.now()),
    Transaction(
        id: 't1', title: 'les courses', amount: 2500, date: DateTime.now()),
  ];
  void _addNewTransaction(
    String txTitle,
    double txAmount,
  ) {
    final newTx = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
