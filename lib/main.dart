import 'package:flutter/material.dart';

import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expense Tracker',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
      id: ('t1'),
      title: 'new shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: ('t2'),
      title: 'grocery',
      amount: 49.72,
      date: DateTime.now(),
    ),
    Transaction(
      id: ('t3'),
      title: 'internet fee',
      amount: 15.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: ('t4'),
      title: 'video game',
      amount: 10,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expense Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Text(tx.title),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
