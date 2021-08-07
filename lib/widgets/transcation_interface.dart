import 'package:flutter/material.dart';

import './transaction_input.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class TransactionInterface extends StatefulWidget {
  const TransactionInterface({Key? key}) : super(key: key);

  @override
  _TransactionInterfaceState createState() => _TransactionInterfaceState();
}

class _TransactionInterfaceState extends State<TransactionInterface> {
  final List<Transaction> _transactions = [
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
      amount: 10.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: ('t4'),
      title: 'video game',
      amount: 10.00,
      date: DateTime.now(),
    ),
    Transaction(
      id: ('t4'),
      title: 'video game',
      amount: 10.00,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(String title, double amount) {
    final newTransaction = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionInput(_addTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
