import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses_app/transaction.dart';



class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({Key key, this.transactions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      height: 300,
 
              child: ListView.builder(
                itemBuilder: (context,index){
                  return Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.deepPurple, width: 5)),
                            margin: EdgeInsets.all(15),
                            child: Text(
                              "\$${transactions[index].amount.toString()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurpleAccent,
                                  fontSize: 20),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                               transactions[index].title,
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                DateFormat().format(transactions[index].date),
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    );

                },
                itemCount: transactions.length,
                 
                
      ),
    );
  }
}