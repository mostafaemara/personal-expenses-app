import 'dart:math';

import 'package:flutter/material.dart';

import '../transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
    final List<Transaction> _transactions=[    Transaction(
        amount: 99.99, date: DateTime.now(), id: "sasa1", title: "new shoes"),
    Transaction(
        amount: 44.99, date: DateTime.now(), id: "sasa2", title: "Chips"),
            Transaction(
        amount: 44.99, date: DateTime.now(), id: "sasa2", title: "Chips"),
            Transaction(
        amount: 44.99, date: DateTime.now(), id: "sasa2", title: "Chips"),
            Transaction(
        amount: 44.99, date: DateTime.now(), id: "sasa2", title: "Chips"),
            Transaction(
        amount: 44.99, date: DateTime.now(), id: "sasa2", title: "Chips"),
            Transaction(
        amount: 44.99, date: DateTime.now(), id: "sasa2", title: "Chips"),
            Transaction(
        amount: 44.99, date: DateTime.now(), id: "sasa2", title: "Chips"),
       ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         NewTransaction(addnewTransaction: _addNewTransaction,),
         TransactionList(transactions:_transactions,),
      ],
    );
  }

  void _addNewTransaction(String title,double amount){

final newTransaction=Transaction(title: title,amount: amount,date: DateTime.now(),id: Random().toString());
setState(() {
 _transactions.add(newTransaction); 
});

  }
}