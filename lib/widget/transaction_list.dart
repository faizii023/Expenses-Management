import 'package:expenses_management/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:expenses_management/models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
final List<Transaction> transaction;

TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (ctx,index){
          return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.pinkAccent, width: 2)),
                    child: Text(
                      "₹ " + transaction[index].amount.toString(),
                      style: TextStyle(
                          color: Colors.pinkAccent,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    padding: EdgeInsets.all(10),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        transaction[index].title.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.pinkAccent),
                      ),
                      Text(
                        DateFormat('EEE dd-MM-yyyy').format(transaction[index].date),
                        style: TextStyle(fontSize: 12, color: Colors.grey[400]),
                      ),
                    ],
                  ),
                ],
              ));
        },
        itemCount: transaction.length,

      ),
    );
  }
}
