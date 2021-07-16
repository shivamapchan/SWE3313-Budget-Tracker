import 'package:flutter/cupertino.dart';
import '../models/transaction.dart';
import './category_list.dart';
import './new_category.dart';

class StudentTransaction extends StatefulWidget {
  @override
  _StudentTransactionState createState() => _StudentTransactionState();
}

class _StudentTransactionState extends State<StudentTransaction> {
  final List<Transaction> _studentCategoryList = [
    // Transaction(id: 't1', expense: 'New Shoes: ', amount: 79.99),
  ];

  void _addNewStudentTransaction(String expenseReason, double expenseAmount) {
    final newStnTxn = Transaction(
        id: DateTime.now().toIso8601String(),
        expense: expenseReason,
        amount: expenseAmount);

    setState(() {
      _studentCategoryList.add(newStnTxn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewCategory(_addNewStudentTransaction), CategoryList(_studentCategoryList)],
    );
  }
}
