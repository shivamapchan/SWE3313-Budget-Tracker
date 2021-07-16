import 'package:flutter/material.dart';

class NewCategory extends StatelessWidget {
  final Function addStnTxn;
  final expenseReasonController = TextEditingController();
  final amountController = TextEditingController();

  NewCategory(this.addStnTxn);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Expense Reason'),
              controller: expenseReasonController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Expense Amount'),
              controller: amountController,
            ),
            // RaisedButton(child: Text('Add Expense'),),
            ElevatedButton(
              onPressed: () {
                addStnTxn(expenseReasonController.text, double.parse(amountController.text));
              },
              child: Text('Add Expenses'),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[300])),
            ),
            
          ],
        ),
      ),
    );
  }
}
