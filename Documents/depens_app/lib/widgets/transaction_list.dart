import 'package:intl/intl.dart';

import '../models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deletetx;
  TransactionList(this.transactions, this.deletetx);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: transactions.isEmpty
          ? Column(
              children: <Widget>[
                Text(
                  'No transaction added yet!',
                  style: Theme.of(context).textTheme.title,
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              // children: transactions.map((tx) {
              itemBuilder: (context, i) {
                return Card(
                  elevation: 5,
                  margin: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      // Container(
                      //   height: 60,
                      //   width: 60,
                      //  decoration: BoxDecoration(shape:BoxShape.circle),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: FittedBox(
                          child: Text('\$${transactions[i].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[i].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                      DateFormat.yMMMd().format(transactions[i].date),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.delete),
                        color: Theme.of(context).errorColor,
                        onPressed: () => deletetx(transactions[i].id)),
                  ),
                );
              },
              itemCount: transactions.length,
              // }).toList(),
            ),
    );
  }
}
