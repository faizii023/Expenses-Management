import 'package:flutter/material.dart';
import 'package:expenses_management/widget/new_transaction.dart';
import 'package:expenses_management/widget/transaction_list.dart';
import 'package:expenses_management/models/transaction.dart';
import 'package:random_string/random_string.dart';


class UserTransaction extends StatefulWidget {
  const UserTransaction({Key? key}) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}


class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: '1',
      title: "New shoes",
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: "Groceries",
      amount: 50.21,
      date: DateTime.now(),
    ),
    Transaction(
      id: '3',
      title: "Shopping",
      amount: 100,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String Txtitle, double Txamount) {
    final newTx = Transaction(
        id: randomAlphaNumeric(10).toString(),
        title: Txtitle,
        amount: Txamount,
        date: DateTime.now());
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[NewTransaction(_addNewTransaction), TransactionList
    (
    _userTransactions
    )
    ]
    ,
    );
  }
}
