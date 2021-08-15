import 'package:flutter/material.dart';

class TransactionInput extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final void Function(String, double) addTransaction;

  TransactionInput(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitTransaction(),
            ),
            TextButton(
              onPressed: submitTransaction,
              child: Text('add transaction'),
            ),
          ],
        ),
      ),
    );
  }

  void submitTransaction() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) return;

    this.addTransaction(
      enteredTitle,
      enteredAmount,
    );
  }
}
